import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { WeeklyRecordsService } from './weekly-records.service';
import { CreateWeeklyRecordDto } from './dto/create-weekly-record.dto';
import { UpdateWeeklyRecordDto } from './dto/update-weekly-record.dto';

@Controller('weekly-records')
export class WeeklyRecordsController {
  constructor(private readonly weeklyRecordsService: WeeklyRecordsService) {}

  @Post()
  create(@Body() createWeeklyRecordDto: CreateWeeklyRecordDto) {
    return this.weeklyRecordsService.create(createWeeklyRecordDto);
  }

  @Get()
  findAll() {
    return this.weeklyRecordsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.weeklyRecordsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateWeeklyRecordDto: UpdateWeeklyRecordDto) {
    return this.weeklyRecordsService.update(+id, updateWeeklyRecordDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.weeklyRecordsService.remove(+id);
  }
}
