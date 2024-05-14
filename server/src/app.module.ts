import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { PrismaModule } from './prisma/prisma.module';
import { ProfilesModule } from './profiles/profiles.module';
import { PostsModule } from './posts/posts.module';
import { PublicationStatusesModule } from './publication-statuses/publication-statuses.module';
import { PhotosForPostModule } from './photos-for-post/photos-for-post.module';
import { LikesModule } from './likes/likes.module';
import { ViewsModule } from './views/views.module';
import { CommentsModule } from './comments/comments.module';

@Module({
  imports: [
    UsersModule,
    PrismaModule,
    ProfilesModule,
    PostsModule,
    PublicationStatusesModule,
    PhotosForPostModule,
    LikesModule,
    ViewsModule,
    CommentsModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
