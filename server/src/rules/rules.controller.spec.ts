import { Test, TestingModule } from '@nestjs/testing';
import { RulesController } from './rules.controller';
import { RulesService } from './rules.service';

describe('RulesController', () => {
  let controller: RulesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [RulesController],
      providers: [RulesService],
    }).compile();

    controller = module.get<RulesController>(RulesController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
