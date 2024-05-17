import { Test, TestingModule } from '@nestjs/testing';
import { QuizTestsService } from './quiz-tests.service';

describe('QuizTestsService', () => {
  let service: QuizTestsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [QuizTestsService],
    }).compile();

    service = module.get<QuizTestsService>(QuizTestsService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
