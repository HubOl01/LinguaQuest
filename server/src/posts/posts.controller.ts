import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { PostsService } from './posts.service';
import { CreatePostDto } from './dto/create-post.dto';
import { UpdatePostDto } from './dto/update-post.dto';
import { ApiCreatedResponse, ApiOkResponse, ApiTags } from '@nestjs/swagger';
import { PostEntity } from './entities/post.entity';

@Controller('posts')
@ApiTags('posts')
export class PostsController {
  constructor(private readonly postsService: PostsService) {}

  @Post()
  @ApiCreatedResponse({ type: PostEntity })
  create(@Body() createPostDto: CreatePostDto) {
    return this.postsService.create(createPostDto);
  }

  @Get()
  @ApiOkResponse({ type: PostEntity, isArray: true })
  findAll() {
    return this.postsService.findAll();
  }

  @Get('get-only-user')
  @ApiOkResponse({ type: PostEntity, isArray: true })
  findAllOnlyUser(@Param('idUser') idUser: string) {
    return this.postsService.findOnlyUser(+idUser);
  }
  @Get('get-only-publication')
  @ApiOkResponse({ type: PostEntity, isArray: true })
  findAllOnlyPublic() {
    return this.postsService.findOnlyPublication();
  }

  @Get('get-only-moderation')
  @ApiOkResponse({ type: PostEntity, isArray: true })
  findAllOnlyModeration() {
    return this.postsService.findOnlyModeration();
  }

  @Get(':id')
  @ApiOkResponse({ type: PostEntity })
  findOne(@Param('id') id: string) {
    return this.postsService.findOne(+id);
  }

  @Patch(':id')
  @ApiCreatedResponse({ type: PostEntity })
  update(@Param('id') id: string, @Body() updatePostDto: UpdatePostDto) {
    return this.postsService.update(+id, updatePostDto);
  }

  @Delete(':id')
  @ApiOkResponse({ type: PostEntity })
  remove(@Param('id') id: string) {
    return this.postsService.remove(+id);
  }
}
