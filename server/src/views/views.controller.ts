import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { ViewsService } from './views.service';
import { CreateViewDto } from './dto/create-view.dto';
import { UpdateViewDto } from './dto/update-view.dto';
import { ApiCreatedResponse, ApiOkResponse, ApiTags } from '@nestjs/swagger';
import { ViewEntity } from './entities/view.entity';

@Controller('views')
@ApiTags('views')
export class ViewsController {
  constructor(private readonly viewsService: ViewsService) {}

  @Post()
  @ApiCreatedResponse({ type: ViewEntity })
  create(@Body() createViewDto: CreateViewDto) {
    return this.viewsService.create(createViewDto);
  }

  @Get('count-for-posts')
  @ApiOkResponse({ type: ViewEntity })
  async getViewsCountForPosts() {
    return this.viewsService.getViewsCountForPost();
  }

  @Get()
  @ApiOkResponse({ type: ViewEntity, isArray: true })
  findAll() {
    return this.viewsService.findAll();
  }

  @Get(':id')
  @ApiOkResponse({ type: ViewEntity })
  findOne(@Param('id') id: string) {
    return this.viewsService.findOne(+id);
  }

  @Patch(':id')
  @ApiCreatedResponse({ type: ViewEntity })
  update(@Param('id') id: string, @Body() updateViewDto: UpdateViewDto) {
    return this.viewsService.update(+id, updateViewDto);
  }

  @Delete(':id')
  @ApiOkResponse({ type: ViewEntity })
  remove(@Param('id') id: string) {
    return this.viewsService.remove(+id);
  }
}
