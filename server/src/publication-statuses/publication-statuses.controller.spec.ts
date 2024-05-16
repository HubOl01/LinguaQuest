import { Test, TestingModule } from '@nestjs/testing';
import { PublicationStatusesController } from './publication-statuses.controller';
import { PublicationStatusesService } from './publication-statuses.service';

describe('PublicationStatusesController', () => {
  let controller: PublicationStatusesController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [PublicationStatusesController],
      providers: [PublicationStatusesService],
    }).compile();

    controller = module.get<PublicationStatusesController>(
      PublicationStatusesController,
    );
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
