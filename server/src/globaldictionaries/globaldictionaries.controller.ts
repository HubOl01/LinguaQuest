import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { GlobaldictionariesService } from './globaldictionaries.service';
import { CreateGlobaldictionaryDto } from './dto/create-globaldictionary.dto';
import { UpdateGlobaldictionaryDto } from './dto/update-globaldictionary.dto';
import { ApiTags } from '@nestjs/swagger';

@Controller('globaldictionaries')
@ApiTags('globaldictionaries')
export class GlobaldictionariesController {
  constructor(private readonly globaldictionariesService: GlobaldictionariesService) { }

  @Post()
  create(@Body() createGlobaldictionaryDto: CreateGlobaldictionaryDto) {
    return this.globaldictionariesService.create(createGlobaldictionaryDto);
  }

  @Get()
  findAll() {
    return this.globaldictionariesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.globaldictionariesService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateGlobaldictionaryDto: UpdateGlobaldictionaryDto) {
    return this.globaldictionariesService.update(+id, updateGlobaldictionaryDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.globaldictionariesService.remove(+id);
  }
}
