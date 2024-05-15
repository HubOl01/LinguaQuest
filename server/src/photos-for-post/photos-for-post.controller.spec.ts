import { Test, TestingModule } from '@nestjs/testing';
import { PhotosForPostController } from './photos-for-post.controller';
import { PhotosForPostService } from './photos-for-post.service';

describe('PhotosForPostController', () => {
  let controller: PhotosForPostController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [PhotosForPostController],
      providers: [PhotosForPostService],
    }).compile();

    controller = module.get<PhotosForPostController>(PhotosForPostController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
