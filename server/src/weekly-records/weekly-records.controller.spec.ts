import { Test, TestingModule } from '@nestjs/testing';
import { WeeklyRecordsController } from './weekly-records.controller';
import { WeeklyRecordsService } from './weekly-records.service';

describe('WeeklyRecordsController', () => {
  let controller: WeeklyRecordsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [WeeklyRecordsController],
      providers: [WeeklyRecordsService],
    }).compile();

    controller = module.get<WeeklyRecordsController>(WeeklyRecordsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
