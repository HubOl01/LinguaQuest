import { Test, TestingModule } from '@nestjs/testing';
import { CardwordsService } from './cardwords.service';

describe('CardwordsService', () => {
  let service: CardwordsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [CardwordsService],
    }).compile();

    service = module.get<CardwordsService>(CardwordsService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
