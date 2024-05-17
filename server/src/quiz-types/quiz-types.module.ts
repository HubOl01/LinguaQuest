import { Module } from '@nestjs/common';
import { QuizTypesService } from './quiz-types.service';
import { QuizTypesController } from './quiz-types.controller';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  controllers: [QuizTypesController],
  providers: [QuizTypesService],
  imports: [PrismaModule]
})
export class QuizTypesModule {}
