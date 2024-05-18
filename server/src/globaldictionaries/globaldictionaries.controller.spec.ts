import { Test, TestingModule } from '@nestjs/testing';
import { GlobaldictionariesController } from './globaldictionaries.controller';
import { GlobaldictionariesService } from './globaldictionaries.service';

describe('GlobaldictionariesController', () => {
  let controller: GlobaldictionariesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [GlobaldictionariesController],
      providers: [GlobaldictionariesService],
    }).compile();

    controller = module.get<GlobaldictionariesController>(GlobaldictionariesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
