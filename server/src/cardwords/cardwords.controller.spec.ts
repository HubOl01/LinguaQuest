import { Test, TestingModule } from '@nestjs/testing';
import { CardwordsController } from './cardwords.controller';
import { CardwordsService } from './cardwords.service';

describe('CardwordsController', () => {
  let controller: CardwordsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [CardwordsController],
      providers: [CardwordsService],
    }).compile();

    controller = module.get<CardwordsController>(CardwordsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
