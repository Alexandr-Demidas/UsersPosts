<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\User as UserResource;
use App\Http\Resources\UserCollection;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\DB;

class UsersDataController extends Controller
{

    public function getAll(Request $request)
    {
        $prepareData = [];
        //пункт 6.1
        $validator = Validator::make($request->all(), [
            'posts_limit' => 'integer'
        ]);
        if ($validator->fails()) {
            $query = 'Параметр posts_limit должен быть число';
            return response()->json(['error' => $query], 200);
        }

        $postsLimit = $request->get('posts_limit');

        return new UserCollection(User::where('active', '=', true)
            ->with(['posts' => function ($query) {
                $query->where('deleted_at', '=', null);
            }])
            ->limit($postsLimit)
            ->get());

        /*     вариант через query builder
                $query = DB::table('users as u')
                    ->leftJoin('posts as p', 'u.id', '=', 'p.author_id')
                    ->leftJoin('images as i', 'i.id', '=', 'p.image_id')
                    ->select('u.id', 'u.name', 'u.active', 'p.id as post_id', 'p.content as content',
                        'p.created_at as created_at_ts', 'i.url as image_url', 'p.deleted_at as deleted_at')
                    ->where('p.deleted_at', '=', null)
                    ->where('u.active', '=', true)
                    ->limit($postsLimit)
                    ->get()->toArray();

                foreach ($query as $q) {
                    $prepareData[] = [
                        'id' => $q->id,
                        'name' => $q->name,
                        'post' => [
                            'id' => $q->post_id,
                            'content' => $q->content,
                            'created_at_ts' => $q->created_at_ts,
                            'image_url' => !empty($q->image_url) ? request()->root() . '\\' . $q->image_url : null,
                        ]
                    ];
                }

                return response()->json(['data' => $prepareData], 200);
            */

    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function getComments(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'user_id' => 'integer'
        ]);
        if ($validator->fails()) {
            $query = 'Параметр user_id должен быть число';
            return response()->json(['error' => $query], 200);
        }

        $userId = $request->get('user_id');

        /*    вариант через query builder */
        $query = DB::table('comments as c')
            ->leftJoin('posts as p', 'p.id', '=', 'c.post_id')
            ->select('c.*', 'p.image_id')
            ->where('c.commentator_id', '=', $userId)
            ->where('p.image_id', '!=', null)
            ->orderBy('c.created_at', 'desc')
            ->get()->toArray();


        /*  получение данных через Sql запрос
              $query = DB::select('select * from `comments` as c left join `posts` as p
                              on p.id = c.post_id where c.commentator_id = ' . $userId . '
                              and  p.image_id is not null order by c.created_at desc');

        */

        return response()->json($query, 200);
    }
}
