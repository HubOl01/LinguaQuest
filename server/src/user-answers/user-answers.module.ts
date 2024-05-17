import { Module } from '@nestjs/common';
import { UserAnswersService } from './user-answers.service';
import { UserAnswersController } from './user-answers.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [UserAnswersController],
  providers: [UserAnswersService],
  imports: [PrismaModule]
})
export class UserAnswersModule {}
