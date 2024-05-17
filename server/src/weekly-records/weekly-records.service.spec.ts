import { Test, TestingModule } from '@nestjs/testing';
import { WeeklyRecordsService } from './weekly-records.service';

describe('WeeklyRecordsService', () => {
  let service: WeeklyRecordsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [WeeklyRecordsService],
    }).compile();

    service = module.get<WeeklyRecordsService>(WeeklyRecordsService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
