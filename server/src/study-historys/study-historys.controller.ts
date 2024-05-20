import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { StudyHistorysService } from './study-historys.service';
import { CreateStudyHistoryDto } from './dto/create-study-history.dto';
import { UpdateStudyHistoryDto } from './dto/update-study-history.dto';
import { ApiTags } from '@nestjs/swagger';

@Controller('study-historys')
@ApiTags('study-historys')
export class StudyHistorysController {
  constructor(private readonly studyHistorysService: StudyHistorysService) {}

  @Post()
  create(@Body() createStudyHistoryDto: CreateStudyHistoryDto) {
    return this.studyHistorysService.create(createStudyHistoryDto);
  }

  @Get()
  findAll() {
    return this.studyHistorysService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.studyHistorysService.findOne(+id);
  }

  @Patch(':id')
  update(
    @Param('id') id: string,
    @Body() updateStudyHistoryDto: UpdateStudyHistoryDto,
  ) {
    return this.studyHistorysService.update(+id, updateStudyHistoryDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.studyHistorysService.remove(+id);
  }
}
