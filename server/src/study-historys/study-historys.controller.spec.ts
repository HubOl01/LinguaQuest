import { Test, TestingModule } from '@nestjs/testing';
import { StudyHistorysController } from './study-historys.controller';
import { StudyHistorysService } from './study-historys.service';

describe('StudyHistorysController', () => {
  let controller: StudyHistorysController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [StudyHistorysController],
      providers: [StudyHistorysService],
    }).compile();

    controller = module.get<StudyHistorysController>(StudyHistorysController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
