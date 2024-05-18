import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { CardwordsService } from './cardwords.service';
import { CreateCardwordDto } from './dto/create-cardword.dto';
import { UpdateCardwordDto } from './dto/update-cardword.dto';
import { ApiTags } from '@nestjs/swagger';

@Controller('cardwords')
@ApiTags('cardwords')
export class CardwordsController {
  constructor(private readonly cardwordsService: CardwordsService) { }

  @Post()
  create(@Body() createCardwordDto: CreateCardwordDto) {
    return this.cardwordsService.create(createCardwordDto);
  }

  @Get()
  findAll() {
    return this.cardwordsService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.cardwordsService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateCardwordDto: UpdateCardwordDto) {
    return this.cardwordsService.update(+id, updateCardwordDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.cardwordsService.remove(+id);
  }
}
