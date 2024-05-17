import { Module } from '@nestjs/common';
import { QuizTestsService } from './quiz-tests.service';
import { QuizTestsController } from './quiz-tests.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [QuizTestsController],
  providers: [QuizTestsService],
  imports: [PrismaModule]
})
export class QuizTestsModule {}
