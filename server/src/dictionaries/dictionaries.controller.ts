import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { DictionariesService } from './dictionaries.service';
import { CreateDictionaryDto } from './dto/create-dictionary.dto';
import { UpdateDictionaryDto } from './dto/update-dictionary.dto';
import { ApiTags } from '@nestjs/swagger';

@Controller('dictionaries')
@ApiTags('dictionaries')
export class DictionariesController {
  constructor(private readonly dictionariesService: DictionariesService) { }

  @Post()
  create(@Body() createDictionaryDto: CreateDictionaryDto) {
    return this.dictionariesService.create(createDictionaryDto);
  }

  @Get()
  findAll() {
    return this.dictionariesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.dictionariesService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateDictionaryDto: UpdateDictionaryDto) {
    return this.dictionariesService.update(+id, updateDictionaryDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.dictionariesService.remove(+id);
  }
}
