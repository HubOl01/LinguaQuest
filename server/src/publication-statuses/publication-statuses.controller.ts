import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common';
import { PublicationStatusesService } from './publication-statuses.service';
import { CreatePublicationStatusDto } from './dto/create-publication-status.dto';
import { UpdatePublicationStatusDto } from './dto/update-publication-status.dto';
import { ApiCreatedResponse, ApiOkResponse, ApiTags } from '@nestjs/swagger';
import { PublicationStatusEntity } from './entities/publication-status.entity';

@Controller('publication-statuses')
@ApiTags('publication-statuses')
export class PublicationStatusesController {
  constructor(
    private readonly publicationStatusesService: PublicationStatusesService,
  ) {}

  @Post()
  @ApiCreatedResponse({ type: PublicationStatusEntity })
  create(@Body() createPublicationStatusDto: CreatePublicationStatusDto) {
    return this.publicationStatusesService.create(createPublicationStatusDto);
  }

  @Get()
  @ApiOkResponse({ type: PublicationStatusEntity, isArray: true })
  findAll() {
    return this.publicationStatusesService.findAll();
  }

  @Get(':id')
  @ApiOkResponse({ type: PublicationStatusEntity })
  findOne(@Param('id') id: string) {
    return this.publicationStatusesService.findOne(+id);
  }

  @Patch(':id')
  @ApiCreatedResponse({ type: PublicationStatusEntity })
  update(
    @Param('id') id: string,
    @Body() updatePublicationStatusDto: UpdatePublicationStatusDto,
  ) {
    return this.publicationStatusesService.update(
      +id,
      updatePublicationStatusDto,
    );
  }

  @Delete(':id')
  @ApiOkResponse({ type: PublicationStatusEntity })
  remove(@Param('id') id: string) {
    return this.publicationStatusesService.remove(+id);
  }
}
