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
import { LanguagesModule } from './languages/languages.module';
import { ModulesModule } from './modules/modules.module';
import { QuizsModule } from './quizs/quizs.module';
import { LessonsModule } from './lessons/lessons.module';


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
    LanguagesModule, 
    ModulesModule, 
    LessonsModule, QuizsModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
