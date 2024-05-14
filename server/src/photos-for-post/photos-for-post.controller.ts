import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { PhotosForPostService } from './photos-for-post.service';
import { CreatePhotosForPostDto } from './dto/create-photos-for-post.dto';
import { UpdatePhotosForPostDto } from './dto/update-photos-for-post.dto';
import { ApiCreatedResponse, ApiOkResponse, ApiTags } from '@nestjs/swagger';
import { PhotosForPostEntity } from './entities/photos-for-post.entity';

@Controller('photos-for-post')
@ApiTags('photos-for-post')
export class PhotosForPostController {
  constructor(private readonly photosForPostService: PhotosForPostService) {}

  @Post()
  @ApiCreatedResponse({ type: PhotosForPostEntity })
  create(@Body() createPhotosForPostDto: CreatePhotosForPostDto) {
    return this.photosForPostService.create(createPhotosForPostDto);
  }

  @Get()
  @ApiOkResponse({ type: PhotosForPostEntity, isArray: true })
  findAll() {
    return this.photosForPostService.findAll();
  }

  @Get(':id')
  @ApiOkResponse({ type: PhotosForPostEntity })
  findOne(@Param('id') id: string) {
    return this.photosForPostService.findOne(+id);
  }

  @Patch(':id')
  @ApiCreatedResponse({ type: PhotosForPostEntity })
  update(
    @Param('id') id: string,
    @Body() updatePhotosForPostDto: UpdatePhotosForPostDto,
  ) {
    return this.photosForPostService.update(+id, updatePhotosForPostDto);
  }

  @Delete(':id')
  @ApiOkResponse({ type: PhotosForPostEntity })
  remove(@Param('id') id: string) {
    return this.photosForPostService.remove(+id);
  }
}
