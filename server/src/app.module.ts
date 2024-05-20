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
import { LessonsModule } from './lessons/lessons.module';
import { ModulesModule } from './modules/modules.module';
import { RulesModule } from './rules/rules.module';
import { DictionariesModule } from './dictionaries/dictionaries.module';
import { CardwordsModule } from './cardwords/cardwords.module';
import { GlobaldictionariesModule } from './globaldictionaries/globaldictionaries.module';
import { BookmarksModule } from './bookmarks/bookmarks.module';

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
    LessonsModule,
    RulesModule,
    DictionariesModule,
    CardwordsModule,
    GlobaldictionariesModule,
    BookmarksModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
