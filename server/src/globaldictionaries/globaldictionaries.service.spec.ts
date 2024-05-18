import { Test, TestingModule } from '@nestjs/testing';
import { GlobaldictionariesService } from './globaldictionaries.service';

describe('GlobaldictionariesService', () => {
  let service: GlobaldictionariesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [GlobaldictionariesService],
    }).compile();

    service = module.get<GlobaldictionariesService>(GlobaldictionariesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
