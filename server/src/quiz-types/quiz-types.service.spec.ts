import { Test, TestingModule } from '@nestjs/testing';
import { QuizTypesService } from './quiz-types.service';

describe('QuizTypesService', () => {
  let service: QuizTypesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [QuizTypesService],
    }).compile();

    service = module.get<QuizTypesService>(QuizTypesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
