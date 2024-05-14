import { Test, TestingModule } from '@nestjs/testing';
import { PublicationStatusesService } from './publication-statuses.service';

describe('PublicationStatusesService', () => {
  let service: PublicationStatusesService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [PublicationStatusesService],
    }).compile();

    service = module.get<PublicationStatusesService>(PublicationStatusesService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
