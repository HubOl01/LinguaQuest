import { Controller, Get, Post, Body, Patch, Param, Delete } from '@nestjs/common';
import { QuizTypesService } from './quiz-types.service';
import { CreateQuizTypeDto } from './dto/create-quiz-type.dto';
import { UpdateQuizTypeDto } from './dto/update-quiz-type.dto';
import { ApiTags } from '@nestjs/swagger';

@Controller('quiz-types')
@ApiTags('quiz-types')
export class QuizTypesController {
  constructor(private readonly quizTypesService: QuizTypesService) {}

  @Post()
  create(@Body() createQuizTypeDto: CreateQuizTypeDto) {
    return this.quizTypesService.create(createQuizTypeDto);
  }

  @Get()
  findAll() {
    return this.quizTypesService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.quizTypesService.findOne(+id);
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateQuizTypeDto: UpdateQuizTypeDto) {
    return this.quizTypesService.update(+id, updateQuizTypeDto);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.quizTypesService.remove(+id);
  }
}
