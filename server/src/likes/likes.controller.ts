import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { LikesService } from './likes.service';
import { CreateLikeDto } from './dto/create-like.dto';
import { LikeEntity } from './entities/like.entity';
import { ApiCreatedResponse, ApiOkResponse, ApiTags } from '@nestjs/swagger';
import { UpdateLikeDto } from './update-like.dto';

@Controller('likes')
@ApiTags('likes')
export class LikesController {
  constructor(private readonly likesService: LikesService) {}

  @Post()
  @ApiCreatedResponse({ type: LikeEntity })
  create(@Body() createLikeDto: CreateLikeDto) {
    return this.likesService.create(createLikeDto);
  }

  @Get('count-for-posts')
  @ApiOkResponse({ type: LikeEntity })
  async getLikesCountForPosts() {
    return this.likesService.getLikesCountForPost();
  }

  @Get()
  @ApiCreatedResponse({ type: LikeEntity, isArray: true })
  findAll() {
    return this.likesService.findAll();
  }

  @Get(':id')
  @ApiOkResponse({ type: LikeEntity })
  findOne(@Param('id') id: string) {
    return this.likesService.findOne(+id);
  }

  @Patch(':id')
  @ApiCreatedResponse({ type: LikeEntity })
  update(@Param('id') id: string, @Body() updateLikeDto: UpdateLikeDto) {
    return this.likesService.update(+id, updateLikeDto);
  }

  @Delete(':id')
  @ApiOkResponse({ type: LikeEntity })
  remove(@Param('id') id: string) {
    return this.likesService.remove(+id);
  }
}
