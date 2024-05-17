import { Test, TestingModule } from '@nestjs/testing';
import { QuizTestsController } from './quiz-tests.controller';
import { QuizTestsService } from './quiz-tests.service';

describe('QuizTestsController', () => {
  let controller: QuizTestsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [QuizTestsController],
      providers: [QuizTestsService],
    }).compile();

    controller = module.get<QuizTestsController>(QuizTestsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
