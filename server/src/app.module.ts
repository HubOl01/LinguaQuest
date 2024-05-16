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

import { LessonsModule } from './lessons/lessons.module';
import { BookmarksModule } from './bookmarks/bookmarks.module';
import { UserAnswersModule } from './user-answers/user-answers.module';
import { GlobaldictionariesModule } from './globaldictionaries/globaldictionaries.module';
import { AchievementsModule } from './achievements/achievements.module';
import { AvatarModule } from './avatar/avatar.module';
import { CardwordsModule } from './cardwords/cardwords.module';
import { DictionariesModule } from './dictionaries/dictionaries.module';
import { LeaguesModule } from './leagues/leagues.module';
import { QuizTestsModule } from './quiz-tests/quiz-tests.module';
import { QuizTypesModule } from './quiz-types/quiz-types.module';
import { QuizsModule } from './quizs/quizs.module';
import { RulesModule } from './rules/rules.module';
import { StudyHistorysModule } from './study-historys/study-historys.module';
import { WeeklyRecordsModule } from './weekly-records/weekly-records.module';


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
    BookmarksModule,
    LessonsModule,
    QuizTypesModule,
    QuizTestsModule,
    UserAnswersModule,
    StudyHistorysModule,
    LanguagesModule, 
    ModulesModule, 
    LessonsModule, QuizsModule, AchievementsModule, AvatarModule, WeeklyRecordsModule, LeaguesModule
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
