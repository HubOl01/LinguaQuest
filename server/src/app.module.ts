import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { PrismaModule } from './prisma/prisma.module';
import { LanguagesModule } from './languages/languages.module';
import { ModulesModule } from './modules/modules.module';
import { LessonsModule } from './lessons/lessons.module';
import { ModulesModule } from './modules/modules.module';

@Module({
  imports: [UsersModule, PrismaModule, LanguagesModule, ModulesModule, LessonsModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
