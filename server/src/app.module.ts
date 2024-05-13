import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { UsersModule } from './users/users.module';
import { PrismaModule } from './prisma/prisma.module';
import { LanguagesModule } from './languages/languages.module';

@Module({
  imports: [UsersModule, PrismaModule, LanguagesModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
