import { Test, TestingModule } from '@nestjs/testing';
import { StudyHistorysService } from './study-historys.service';

describe('StudyHistorysService', () => {
  let service: StudyHistorysService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [StudyHistorysService],
    }).compile();

    service = module.get<StudyHistorysService>(StudyHistorysService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
