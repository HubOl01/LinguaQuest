import { Test, TestingModule } from '@nestjs/testing';
import { QuizTypesController } from './quiz-types.controller';
import { QuizTypesService } from './quiz-types.service';

describe('QuizTypesController', () => {
  let controller: QuizTypesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [QuizTypesController],
      providers: [QuizTypesService],
    }).compile();

    controller = module.get<QuizTypesController>(QuizTypesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
