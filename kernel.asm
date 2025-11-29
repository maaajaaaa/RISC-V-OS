
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000c117          	auipc	sp,0xc
    80000004:	82013103          	ld	sp,-2016(sp) # 8000b820 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	655050ef          	jal	ra,80005e70 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <supervisorTrap>:
.extern handleSupervisorTrap
.global supervisorTrap
.align 4
supervisorTrap:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call handleSupervisorTrap
    80001084:	5ad000ef          	jal	ra,80001e30 <handleSupervisorTrap>

    sd a0, 10 * 8(sp)
    80001088:	04a13823          	sd	a0,80(sp)
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
        ld x\index, \index * 8(sp)
        .endr
    8000108c:	00013003          	ld	zero,0(sp)
    80001090:	00813083          	ld	ra,8(sp)
    80001094:	01013103          	ld	sp,16(sp)
    80001098:	01813183          	ld	gp,24(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    80001108:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <contextSwitch>:
.global contextSwitch
contextSwitch:
        sd ra, (a0) # old ra
    80001120:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
        sd sp, (a1) # old sp
    80001124:	0025b023          	sd	sp,0(a1)

        ld ra, (a2) # running ra
    80001128:	00063083          	ld	ra,0(a2)
        ld sp, (a3) # running sp
    8000112c:	0006b103          	ld	sp,0(a3)

        ret
    80001130:	00008067          	ret

0000000080001134 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001134:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001138:	00b29a63          	bne	t0,a1,8000114c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000113c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001140:	fe029ae3          	bnez	t0,80001134 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001144:	00000513          	li	a0,0
    jr ra                  # Return.
    80001148:	00008067          	ret

000000008000114c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000114c:	00100513          	li	a0,1
    80001150:	00008067          	ret

0000000080001154 <_Z15pass_parametersmmmm>:
#include "../h/syscall_c.hpp"
#include "../lib/hw.h"

void pass_parameters(uint64 func_num, uint64 p1=0, uint64 p2=0, uint64 p3=0) {
    80001154:	ff010113          	addi	sp,sp,-16
    80001158:	00813423          	sd	s0,8(sp)
    8000115c:	01010413          	addi	s0,sp,16
    if (p1) __asm__ volatile ("mv a1, %0" : : "r"(p1));
    80001160:	00058463          	beqz	a1,80001168 <_Z15pass_parametersmmmm+0x14>
    80001164:	00058593          	mv	a1,a1
    if (p2) __asm__ volatile ("mv a2, %0" : : "r"(p2));
    80001168:	00060463          	beqz	a2,80001170 <_Z15pass_parametersmmmm+0x1c>
    8000116c:	00060613          	mv	a2,a2
    if (p3) __asm__ volatile ("mv a3, %0" : : "r"(p3));
    80001170:	00068463          	beqz	a3,80001178 <_Z15pass_parametersmmmm+0x24>
    80001174:	00068693          	mv	a3,a3
    __asm__ volatile ("mv a0, %0" : : "r"(func_num));
    80001178:	00050513          	mv	a0,a0
    __asm__ volatile ("ecall");
    8000117c:	00000073          	ecall
}
    80001180:	00813403          	ld	s0,8(sp)
    80001184:	01010113          	addi	sp,sp,16
    80001188:	00008067          	ret

000000008000118c <_Z9mem_allocm>:

void* mem_alloc(size_t size){
    8000118c:	ff010113          	addi	sp,sp,-16
    80001190:	00113423          	sd	ra,8(sp)
    80001194:	00813023          	sd	s0,0(sp)
    80001198:	01010413          	addi	s0,sp,16
    8000119c:	00050593          	mv	a1,a0
    pass_parameters(MEM_ALLOC, size);
    800011a0:	00000693          	li	a3,0
    800011a4:	00000613          	li	a2,0
    800011a8:	00100513          	li	a0,1
    800011ac:	00000097          	auipc	ra,0x0
    800011b0:	fa8080e7          	jalr	-88(ra) # 80001154 <_Z15pass_parametersmmmm>
    void *ptr;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ptr));
    800011b4:	00050513          	mv	a0,a0
    return ptr;
}
    800011b8:	00813083          	ld	ra,8(sp)
    800011bc:	00013403          	ld	s0,0(sp)
    800011c0:	01010113          	addi	sp,sp,16
    800011c4:	00008067          	ret

00000000800011c8 <_Z8mem_freePv>:

int mem_free(void* ptr){
    800011c8:	ff010113          	addi	sp,sp,-16
    800011cc:	00113423          	sd	ra,8(sp)
    800011d0:	00813023          	sd	s0,0(sp)
    800011d4:	01010413          	addi	s0,sp,16
    800011d8:	00050593          	mv	a1,a0
    pass_parameters(MEM_FREE, (uint64)ptr);
    800011dc:	00000693          	li	a3,0
    800011e0:	00000613          	li	a2,0
    800011e4:	00200513          	li	a0,2
    800011e8:	00000097          	auipc	ra,0x0
    800011ec:	f6c080e7          	jalr	-148(ra) # 80001154 <_Z15pass_parametersmmmm>
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    800011f0:	00050513          	mv	a0,a0
    return ret;
}
    800011f4:	0005051b          	sext.w	a0,a0
    800011f8:	00813083          	ld	ra,8(sp)
    800011fc:	00013403          	ld	s0,0(sp)
    80001200:	01010113          	addi	sp,sp,16
    80001204:	00008067          	ret

0000000080001208 <_Z18mem_get_free_spacev>:


size_t mem_get_free_space() {
    80001208:	ff010113          	addi	sp,sp,-16
    8000120c:	00113423          	sd	ra,8(sp)
    80001210:	00813023          	sd	s0,0(sp)
    80001214:	01010413          	addi	s0,sp,16
    pass_parameters(MEM_GET_FREE_SPACE);
    80001218:	00000693          	li	a3,0
    8000121c:	00000613          	li	a2,0
    80001220:	00000593          	li	a1,0
    80001224:	00300513          	li	a0,3
    80001228:	00000097          	auipc	ra,0x0
    8000122c:	f2c080e7          	jalr	-212(ra) # 80001154 <_Z15pass_parametersmmmm>
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    80001230:	00050513          	mv	a0,a0
    return ret;
}
    80001234:	0005051b          	sext.w	a0,a0
    80001238:	00813083          	ld	ra,8(sp)
    8000123c:	00013403          	ld	s0,0(sp)
    80001240:	01010113          	addi	sp,sp,16
    80001244:	00008067          	ret

0000000080001248 <_Z26mem_get_largest_free_blockv>:


size_t mem_get_largest_free_block() {
    80001248:	ff010113          	addi	sp,sp,-16
    8000124c:	00113423          	sd	ra,8(sp)
    80001250:	00813023          	sd	s0,0(sp)
    80001254:	01010413          	addi	s0,sp,16
    pass_parameters(MEM_GET_LARGEST_FREE_BLOCK);
    80001258:	00000693          	li	a3,0
    8000125c:	00000613          	li	a2,0
    80001260:	00000593          	li	a1,0
    80001264:	00400513          	li	a0,4
    80001268:	00000097          	auipc	ra,0x0
    8000126c:	eec080e7          	jalr	-276(ra) # 80001154 <_Z15pass_parametersmmmm>
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    80001270:	00050513          	mv	a0,a0
    return ret;
}
    80001274:	0005051b          	sext.w	a0,a0
    80001278:	00813083          	ld	ra,8(sp)
    8000127c:	00013403          	ld	s0,0(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <_Z12thread_startPP3PCB>:
    }

    return -1;
}

void thread_start(thread_t* handle){
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00113423          	sd	ra,8(sp)
    80001290:	00813023          	sd	s0,0(sp)
    80001294:	01010413          	addi	s0,sp,16
    pass_parameters(THREAD_START, (uint64)*handle);
    80001298:	00000693          	li	a3,0
    8000129c:	00000613          	li	a2,0
    800012a0:	00053583          	ld	a1,0(a0)
    800012a4:	01400513          	li	a0,20
    800012a8:	00000097          	auipc	ra,0x0
    800012ac:	eac080e7          	jalr	-340(ra) # 80001154 <_Z15pass_parametersmmmm>
}
    800012b0:	00813083          	ld	ra,8(sp)
    800012b4:	00013403          	ld	s0,0(sp)
    800012b8:	01010113          	addi	sp,sp,16
    800012bc:	00008067          	ret

00000000800012c0 <_Z13thread_createPP3PCBPFvPvES2_>:
int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    800012c0:	fd010113          	addi	sp,sp,-48
    800012c4:	02113423          	sd	ra,40(sp)
    800012c8:	02813023          	sd	s0,32(sp)
    800012cc:	00913c23          	sd	s1,24(sp)
    800012d0:	01213823          	sd	s2,16(sp)
    800012d4:	01313423          	sd	s3,8(sp)
    800012d8:	03010413          	addi	s0,sp,48
    800012dc:	00050493          	mv	s1,a0
    800012e0:	00058913          	mv	s2,a1
    800012e4:	00060993          	mv	s3,a2
    void* stack = mem_alloc(sizeof(uint64)*DEFAULT_STACK_SIZE);
    800012e8:	00008537          	lui	a0,0x8
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	ea0080e7          	jalr	-352(ra) # 8000118c <_Z9mem_allocm>
    if (stack != nullptr) {
    800012f4:	04050863          	beqz	a0,80001344 <_Z13thread_createPP3PCBPFvPvES2_+0x84>
    800012f8:	00050693          	mv	a3,a0
        pass_parameters(THREAD_CREATE, (uint64)start_routine, (uint64)arg, (uint64)stack);
    800012fc:	00098613          	mv	a2,s3
    80001300:	00090593          	mv	a1,s2
    80001304:	01100513          	li	a0,17
    80001308:	00000097          	auipc	ra,0x0
    8000130c:	e4c080e7          	jalr	-436(ra) # 80001154 <_Z15pass_parametersmmmm>
        __asm__ volatile("mv %[param], a0":[param] "=r"(*handle));
    80001310:	00050793          	mv	a5,a0
    80001314:	00f4b023          	sd	a5,0(s1)
        thread_start(handle);
    80001318:	00048513          	mv	a0,s1
    8000131c:	00000097          	auipc	ra,0x0
    80001320:	f6c080e7          	jalr	-148(ra) # 80001288 <_Z12thread_startPP3PCB>
        return 0;
    80001324:	00000513          	li	a0,0
}
    80001328:	02813083          	ld	ra,40(sp)
    8000132c:	02013403          	ld	s0,32(sp)
    80001330:	01813483          	ld	s1,24(sp)
    80001334:	01013903          	ld	s2,16(sp)
    80001338:	00813983          	ld	s3,8(sp)
    8000133c:	03010113          	addi	sp,sp,48
    80001340:	00008067          	ret
    return -1;
    80001344:	fff00513          	li	a0,-1
    80001348:	fe1ff06f          	j	80001328 <_Z13thread_createPP3PCBPFvPvES2_+0x68>

000000008000134c <_Z11thread_exitv>:

int thread_exit(){
    8000134c:	ff010113          	addi	sp,sp,-16
    80001350:	00113423          	sd	ra,8(sp)
    80001354:	00813023          	sd	s0,0(sp)
    80001358:	01010413          	addi	s0,sp,16
    pass_parameters(THREAD_EXIT);
    8000135c:	00000693          	li	a3,0
    80001360:	00000613          	li	a2,0
    80001364:	00000593          	li	a1,0
    80001368:	01200513          	li	a0,18
    8000136c:	00000097          	auipc	ra,0x0
    80001370:	de8080e7          	jalr	-536(ra) # 80001154 <_Z15pass_parametersmmmm>
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    80001374:	00050513          	mv	a0,a0
    return ret;
}
    80001378:	0005051b          	sext.w	a0,a0
    8000137c:	00813083          	ld	ra,8(sp)
    80001380:	00013403          	ld	s0,0(sp)
    80001384:	01010113          	addi	sp,sp,16
    80001388:	00008067          	ret

000000008000138c <_Z15thread_dispatchv>:

void thread_dispatch(){
    8000138c:	ff010113          	addi	sp,sp,-16
    80001390:	00113423          	sd	ra,8(sp)
    80001394:	00813023          	sd	s0,0(sp)
    80001398:	01010413          	addi	s0,sp,16
    pass_parameters(THREAD_DISPATCH);
    8000139c:	00000693          	li	a3,0
    800013a0:	00000613          	li	a2,0
    800013a4:	00000593          	li	a1,0
    800013a8:	01300513          	li	a0,19
    800013ac:	00000097          	auipc	ra,0x0
    800013b0:	da8080e7          	jalr	-600(ra) # 80001154 <_Z15pass_parametersmmmm>
}
    800013b4:	00813083          	ld	ra,8(sp)
    800013b8:	00013403          	ld	s0,0(sp)
    800013bc:	01010113          	addi	sp,sp,16
    800013c0:	00008067          	ret

00000000800013c4 <_Z8sem_openPP13BackSemaphorej>:

int sem_open(sem_t* handle, unsigned init){
    800013c4:	ff010113          	addi	sp,sp,-16
    800013c8:	00113423          	sd	ra,8(sp)
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	01010413          	addi	s0,sp,16
    pass_parameters(SEM_OPEN, (uint64)handle, (uint64)init);
    800013d4:	00000693          	li	a3,0
    800013d8:	02059613          	slli	a2,a1,0x20
    800013dc:	02065613          	srli	a2,a2,0x20
    800013e0:	00050593          	mv	a1,a0
    800013e4:	02100513          	li	a0,33
    800013e8:	00000097          	auipc	ra,0x0
    800013ec:	d6c080e7          	jalr	-660(ra) # 80001154 <_Z15pass_parametersmmmm>
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    800013f0:	00050793          	mv	a5,a0
    return 0;
}
    800013f4:	00000513          	li	a0,0
    800013f8:	00813083          	ld	ra,8(sp)
    800013fc:	00013403          	ld	s0,0(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_Z9sem_closeP13BackSemaphore>:

int sem_close(sem_t handle){
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00113423          	sd	ra,8(sp)
    80001410:	00813023          	sd	s0,0(sp)
    80001414:	01010413          	addi	s0,sp,16
    80001418:	00050593          	mv	a1,a0
    pass_parameters(SEM_CLOSE, (uint64)handle);
    8000141c:	00000693          	li	a3,0
    80001420:	00000613          	li	a2,0
    80001424:	02200513          	li	a0,34
    80001428:	00000097          	auipc	ra,0x0
    8000142c:	d2c080e7          	jalr	-724(ra) # 80001154 <_Z15pass_parametersmmmm>
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    80001430:	00050513          	mv	a0,a0
    return ret;
}
    80001434:	0005051b          	sext.w	a0,a0
    80001438:	00813083          	ld	ra,8(sp)
    8000143c:	00013403          	ld	s0,0(sp)
    80001440:	01010113          	addi	sp,sp,16
    80001444:	00008067          	ret

0000000080001448 <_Z8sem_waitP13BackSemaphore>:

int sem_wait(sem_t id){
    80001448:	ff010113          	addi	sp,sp,-16
    8000144c:	00113423          	sd	ra,8(sp)
    80001450:	00813023          	sd	s0,0(sp)
    80001454:	01010413          	addi	s0,sp,16
    80001458:	00050593          	mv	a1,a0
    pass_parameters(SEM_WAIT, (uint64)id);
    8000145c:	00000693          	li	a3,0
    80001460:	00000613          	li	a2,0
    80001464:	02300513          	li	a0,35
    80001468:	00000097          	auipc	ra,0x0
    8000146c:	cec080e7          	jalr	-788(ra) # 80001154 <_Z15pass_parametersmmmm>
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    80001470:	00050513          	mv	a0,a0
    return ret;
}
    80001474:	0005051b          	sext.w	a0,a0
    80001478:	00813083          	ld	ra,8(sp)
    8000147c:	00013403          	ld	s0,0(sp)
    80001480:	01010113          	addi	sp,sp,16
    80001484:	00008067          	ret

0000000080001488 <_Z10sem_signalP13BackSemaphore>:

int sem_signal(sem_t id){
    80001488:	ff010113          	addi	sp,sp,-16
    8000148c:	00113423          	sd	ra,8(sp)
    80001490:	00813023          	sd	s0,0(sp)
    80001494:	01010413          	addi	s0,sp,16
    80001498:	00050593          	mv	a1,a0
    pass_parameters(SEM_SIGNAL, (uint64)id);
    8000149c:	00000693          	li	a3,0
    800014a0:	00000613          	li	a2,0
    800014a4:	02400513          	li	a0,36
    800014a8:	00000097          	auipc	ra,0x0
    800014ac:	cac080e7          	jalr	-852(ra) # 80001154 <_Z15pass_parametersmmmm>
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    800014b0:	00050513          	mv	a0,a0
    return ret;
}
    800014b4:	0005051b          	sext.w	a0,a0
    800014b8:	00813083          	ld	ra,8(sp)
    800014bc:	00013403          	ld	s0,0(sp)
    800014c0:	01010113          	addi	sp,sp,16
    800014c4:	00008067          	ret

00000000800014c8 <_Z4getcv>:

char getc() {
    800014c8:	ff010113          	addi	sp,sp,-16
    800014cc:	00113423          	sd	ra,8(sp)
    800014d0:	00813023          	sd	s0,0(sp)
    800014d4:	01010413          	addi	s0,sp,16
    pass_parameters(GETC);
    800014d8:	00000693          	li	a3,0
    800014dc:	00000613          	li	a2,0
    800014e0:	00000593          	li	a1,0
    800014e4:	04100513          	li	a0,65
    800014e8:	00000097          	auipc	ra,0x0
    800014ec:	c6c080e7          	jalr	-916(ra) # 80001154 <_Z15pass_parametersmmmm>
    char ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    800014f0:	00050513          	mv	a0,a0
    return ret;
}
    800014f4:	0ff57513          	andi	a0,a0,255
    800014f8:	00813083          	ld	ra,8(sp)
    800014fc:	00013403          	ld	s0,0(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_Z4putcc>:

void putc(char c){
    80001508:	ff010113          	addi	sp,sp,-16
    8000150c:	00113423          	sd	ra,8(sp)
    80001510:	00813023          	sd	s0,0(sp)
    80001514:	01010413          	addi	s0,sp,16
    80001518:	00050593          	mv	a1,a0
    pass_parameters(PUTC, (uint64)c);
    8000151c:	00000693          	li	a3,0
    80001520:	00000613          	li	a2,0
    80001524:	04200513          	li	a0,66
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	c2c080e7          	jalr	-980(ra) # 80001154 <_Z15pass_parametersmmmm>
}
    80001530:	00813083          	ld	ra,8(sp)
    80001534:	00013403          	ld	s0,0(sp)
    80001538:	01010113          	addi	sp,sp,16
    8000153c:	00008067          	ret

0000000080001540 <_Z10time_sleepm>:

int time_sleep(time_t t) {
    80001540:	ff010113          	addi	sp,sp,-16
    80001544:	00113423          	sd	ra,8(sp)
    80001548:	00813023          	sd	s0,0(sp)
    8000154c:	01010413          	addi	s0,sp,16
    80001550:	00050593          	mv	a1,a0
    pass_parameters(TIME_SLEEP, (uint64)t);
    80001554:	00000693          	li	a3,0
    80001558:	00000613          	li	a2,0
    8000155c:	03100513          	li	a0,49
    80001560:	00000097          	auipc	ra,0x0
    80001564:	bf4080e7          	jalr	-1036(ra) # 80001154 <_Z15pass_parametersmmmm>
    int ret;
    __asm__ volatile ("mv %[read], a0" : [read] "=r" (ret));
    80001568:	00050513          	mv	a0,a0
    return ret;
    8000156c:	0005051b          	sext.w	a0,a0
    80001570:	00813083          	ld	ra,8(sp)
    80001574:	00013403          	ld	s0,0(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret

0000000080001580 <_ZN3PCBD1Ev>:
    init(start_routine, arg, stack);
}


PCB::~PCB() {
    if (stackSpace) {
    80001580:	03053503          	ld	a0,48(a0) # 8030 <_entry-0x7fff7fd0>
    80001584:	02050663          	beqz	a0,800015b0 <_ZN3PCBD1Ev+0x30>
PCB::~PCB() {
    80001588:	ff010113          	addi	sp,sp,-16
    8000158c:	00113423          	sd	ra,8(sp)
    80001590:	00813023          	sd	s0,0(sp)
    80001594:	01010413          	addi	s0,sp,16
        MemoryAllocator::deallocate(stackSpace);
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	224080e7          	jalr	548(ra) # 800027bc <_ZN15MemoryAllocator10deallocateEPv>
    }
}
    800015a0:	00813083          	ld	ra,8(sp)
    800015a4:	00013403          	ld	s0,0(sp)
    800015a8:	01010113          	addi	sp,sp,16
    800015ac:	00008067          	ret
    800015b0:	00008067          	ret

00000000800015b4 <_ZN3PCB4initEPFvPvES0_S0_>:

#define STACK_SLOTS 20
void PCB::init(void (*start_routine)(void*), void* arg, void* stack){
    800015b4:	ff010113          	addi	sp,sp,-16
    800015b8:	00813423          	sd	s0,8(sp)
    800015bc:	01010413          	addi	s0,sp,16
    this->state = ThreadState::NEW;
    800015c0:	00052023          	sw	zero,0(a0)
	this->id = ident++;
    800015c4:	0000a717          	auipc	a4,0xa
    800015c8:	2cc70713          	addi	a4,a4,716 # 8000b890 <_ZN3PCB5identE>
    800015cc:	00072783          	lw	a5,0(a4)
    800015d0:	0017881b          	addiw	a6,a5,1
    800015d4:	01072023          	sw	a6,0(a4)
    800015d8:	00f52223          	sw	a5,4(a0)
    if(this->id == 0) {
    800015dc:	00079663          	bnez	a5,800015e8 <_ZN3PCB4initEPFvPvES0_S0_+0x34>
        PCB::main_thread = this;
    800015e0:	0000a797          	auipc	a5,0xa
    800015e4:	2aa7bc23          	sd	a0,696(a5) # 8000b898 <_ZN3PCB11main_threadE>
    }
    this->body = start_routine;
    800015e8:	00b53423          	sd	a1,8(a0)
    this->argument = arg;
    800015ec:	00c53823          	sd	a2,16(a0)
    this->stackSpace = stack;
    800015f0:	02d53823          	sd	a3,48(a0)
    this->stackPointer = stack != nullptr ? (uint64*)((uint8*)stackSpace + DEFAULT_STACK_SIZE) : 0;
    800015f4:	00068663          	beqz	a3,80001600 <_ZN3PCB4initEPFvPvES0_S0_+0x4c>
    800015f8:	000017b7          	lui	a5,0x1
    800015fc:	00f686b3          	add	a3,a3,a5
    80001600:	00d53c23          	sd	a3,24(a0)
    this->returnAddress = start_routine != nullptr ? (uint64*)&run_thread_body : 0;
    80001604:	00058e63          	beqz	a1,80001620 <_ZN3PCB4initEPFvPvES0_S0_+0x6c>
    80001608:	00000797          	auipc	a5,0x0
    8000160c:	16c78793          	addi	a5,a5,364 # 80001774 <_ZN3PCB15run_thread_bodyEv>
    80001610:	02f53023          	sd	a5,32(a0)

}
    80001614:	00813403          	ld	s0,8(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret
    this->returnAddress = start_routine != nullptr ? (uint64*)&run_thread_body : 0;
    80001620:	00000793          	li	a5,0
    80001624:	fedff06f          	j	80001610 <_ZN3PCB4initEPFvPvES0_S0_+0x5c>

0000000080001628 <_ZN3PCBC1EPFvPvES0_S0_>:
PCB::PCB(void (*start_routine)(void*), void* arg, void* stack){
    80001628:	ff010113          	addi	sp,sp,-16
    8000162c:	00113423          	sd	ra,8(sp)
    80001630:	00813023          	sd	s0,0(sp)
    80001634:	01010413          	addi	s0,sp,16
    init(start_routine, arg, stack);
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	f7c080e7          	jalr	-132(ra) # 800015b4 <_ZN3PCB4initEPFvPvES0_S0_>
}
    80001640:	00813083          	ld	ra,8(sp)
    80001644:	00013403          	ld	s0,0(sp)
    80001648:	01010113          	addi	sp,sp,16
    8000164c:	00008067          	ret

0000000080001650 <_ZN3PCB5startEv>:

void PCB::start(){

    if (this->body != nullptr){
    80001650:	00853783          	ld	a5,8(a0)
    80001654:	02078a63          	beqz	a5,80001688 <_ZN3PCB5startEv+0x38>
void PCB::start(){
    80001658:	ff010113          	addi	sp,sp,-16
    8000165c:	00113423          	sd	ra,8(sp)
    80001660:	00813023          	sd	s0,0(sp)
    80001664:	01010413          	addi	s0,sp,16
        state = ThreadState::READY;
    80001668:	00100793          	li	a5,1
    8000166c:	00f52023          	sw	a5,0(a0)
        Scheduler::push(this);
    80001670:	00000097          	auipc	ra,0x0
    80001674:	4a0080e7          	jalr	1184(ra) # 80001b10 <_ZN9Scheduler4pushEP3PCB>
    }
}
    80001678:	00813083          	ld	ra,8(sp)
    8000167c:	00013403          	ld	s0,0(sp)
    80001680:	01010113          	addi	sp,sp,16
    80001684:	00008067          	ret
    80001688:	00008067          	ret

000000008000168c <_ZN3PCB8dispatchEv>:
extern "C" void contextSwitch();

void PCB::dispatch(){
    8000168c:	fe010113          	addi	sp,sp,-32
    80001690:	00113c23          	sd	ra,24(sp)
    80001694:	00813823          	sd	s0,16(sp)
    80001698:	00913423          	sd	s1,8(sp)
    8000169c:	02010413          	addi	s0,sp,32
    PCB *old = running;
    800016a0:	0000a497          	auipc	s1,0xa
    800016a4:	2004b483          	ld	s1,512(s1) # 8000b8a0 <_ZN3PCB7runningE>
    if (old != nullptr && (old->state == ThreadState::RUNNING)) {
    800016a8:	00048863          	beqz	s1,800016b8 <_ZN3PCB8dispatchEv+0x2c>
    800016ac:	0004a703          	lw	a4,0(s1)
    800016b0:	00200793          	li	a5,2
    800016b4:	06f70663          	beq	a4,a5,80001720 <_ZN3PCB8dispatchEv+0x94>
        old->state = ThreadState::READY;
        Scheduler::push(old);
    }

    running = Scheduler::getNext();
    800016b8:	00000097          	auipc	ra,0x0
    800016bc:	498080e7          	jalr	1176(ra) # 80001b50 <_ZN9Scheduler7getNextEv>
    800016c0:	0000a797          	auipc	a5,0xa
    800016c4:	1ea7b023          	sd	a0,480(a5) # 8000b8a0 <_ZN3PCB7runningE>
    if (running == nullptr) {
    800016c8:	06050863          	beqz	a0,80001738 <_ZN3PCB8dispatchEv+0xac>
        running = PCB::main_thread;
    }
    running->state = ThreadState::RUNNING;
    800016cc:	0000a797          	auipc	a5,0xa
    800016d0:	1c478793          	addi	a5,a5,452 # 8000b890 <_ZN3PCB5identE>
    800016d4:	0107b703          	ld	a4,16(a5)
    800016d8:	00200693          	li	a3,2
    800016dc:	00d72023          	sw	a3,0(a4)


    __asm__ volatile ("mv a3, %[p]"::[p]"r"(&running->stackPointer));
    800016e0:	0107b783          	ld	a5,16(a5)
    800016e4:	01878713          	addi	a4,a5,24
    800016e8:	00070693          	mv	a3,a4
    __asm__ volatile ("mv a2, %[p]"::[p]"r"(&running->returnAddress));
    800016ec:	02078793          	addi	a5,a5,32
    800016f0:	00078613          	mv	a2,a5
    __asm__ volatile ("mv a1, %[p]"::[p]"r"(&old->stackPointer));
    800016f4:	01848793          	addi	a5,s1,24
    800016f8:	00078593          	mv	a1,a5
    __asm__ volatile ("mv a0, %[p]"::[p]"r"(&old->returnAddress));
    800016fc:	02048493          	addi	s1,s1,32
    80001700:	00048513          	mv	a0,s1
    contextSwitch();
    80001704:	00000097          	auipc	ra,0x0
    80001708:	a1c080e7          	jalr	-1508(ra) # 80001120 <contextSwitch>

}
    8000170c:	01813083          	ld	ra,24(sp)
    80001710:	01013403          	ld	s0,16(sp)
    80001714:	00813483          	ld	s1,8(sp)
    80001718:	02010113          	addi	sp,sp,32
    8000171c:	00008067          	ret
        old->state = ThreadState::READY;
    80001720:	00100793          	li	a5,1
    80001724:	00f4a023          	sw	a5,0(s1)
        Scheduler::push(old);
    80001728:	00048513          	mv	a0,s1
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	3e4080e7          	jalr	996(ra) # 80001b10 <_ZN9Scheduler4pushEP3PCB>
    80001734:	f85ff06f          	j	800016b8 <_ZN3PCB8dispatchEv+0x2c>
        running = PCB::main_thread;
    80001738:	0000a797          	auipc	a5,0xa
    8000173c:	15878793          	addi	a5,a5,344 # 8000b890 <_ZN3PCB5identE>
    80001740:	0087b703          	ld	a4,8(a5)
    80001744:	00e7b823          	sd	a4,16(a5)
    80001748:	f85ff06f          	j	800016cc <_ZN3PCB8dispatchEv+0x40>

000000008000174c <_Z6popsppv>:

void popspp() {
    8000174c:	ff010113          	addi	sp,sp,-16
    80001750:	00813423          	sd	s0,8(sp)
    80001754:	01010413          	addi	s0,sp,16
    uint64 mask = 1 << 8;
    __asm__ volatile ("csrw sepc, ra");
    80001758:	14109073          	csrw	sepc,ra
    __asm__ volatile ("csrc sstatus, %[mask]" :: [mask] "r"(mask));
    8000175c:	10000793          	li	a5,256
    80001760:	1007b073          	csrc	sstatus,a5
    __asm__ volatile ("sret");
    80001764:	10200073          	sret
}
    80001768:	00813403          	ld	s0,8(sp)
    8000176c:	01010113          	addi	sp,sp,16
    80001770:	00008067          	ret

0000000080001774 <_ZN3PCB15run_thread_bodyEv>:

void PCB::run_thread_body(){
    80001774:	fe010113          	addi	sp,sp,-32
    80001778:	00113c23          	sd	ra,24(sp)
    8000177c:	00813823          	sd	s0,16(sp)
    80001780:	00913423          	sd	s1,8(sp)
    80001784:	02010413          	addi	s0,sp,32
    popspp();
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	fc4080e7          	jalr	-60(ra) # 8000174c <_Z6popsppv>


    running->body(running->argument);
    80001790:	0000a497          	auipc	s1,0xa
    80001794:	10048493          	addi	s1,s1,256 # 8000b890 <_ZN3PCB5identE>
    80001798:	0104b783          	ld	a5,16(s1)
    8000179c:	0087b703          	ld	a4,8(a5)
    800017a0:	0107b503          	ld	a0,16(a5)
    800017a4:	000700e7          	jalr	a4
    /*PCB::exit();*/
    running->state = ThreadState::FINISHED;
    800017a8:	0104b783          	ld	a5,16(s1)
    800017ac:	00400713          	li	a4,4
    800017b0:	00e7a023          	sw	a4,0(a5)
    __asm__ volatile ("ecall");
    800017b4:	00000073          	ecall
    //dispatch();

}
    800017b8:	01813083          	ld	ra,24(sp)
    800017bc:	01013403          	ld	s0,16(sp)
    800017c0:	00813483          	ld	s1,8(sp)
    800017c4:	02010113          	addi	sp,sp,32
    800017c8:	00008067          	ret

00000000800017cc <_ZN3PCB4exitEv>:

void PCB::exit() {
    800017cc:	ff010113          	addi	sp,sp,-16
    800017d0:	00113423          	sd	ra,8(sp)
    800017d4:	00813023          	sd	s0,0(sp)
    800017d8:	01010413          	addi	s0,sp,16
    running->state = ThreadState::FINISHED;
    800017dc:	0000a797          	auipc	a5,0xa
    800017e0:	0c47b783          	ld	a5,196(a5) # 8000b8a0 <_ZN3PCB7runningE>
    800017e4:	00400713          	li	a4,4
    800017e8:	00e7a023          	sw	a4,0(a5)
    dispatch();
    800017ec:	00000097          	auipc	ra,0x0
    800017f0:	ea0080e7          	jalr	-352(ra) # 8000168c <_ZN3PCB8dispatchEv>
    800017f4:	00813083          	ld	ra,8(sp)
    800017f8:	00013403          	ld	s0,0(sp)
    800017fc:	01010113          	addi	sp,sp,16
    80001800:	00008067          	ret

0000000080001804 <_ZN13BackSemaphoreC1Ej>:
#include "../h/BackSemaphore.hpp"
#include "../h/Scheduler.hpp"
int BackSemaphore::ident = 0;

BackSemaphore::BackSemaphore(unsigned init){
    80001804:	ff010113          	addi	sp,sp,-16
    80001808:	00813423          	sd	s0,8(sp)
    8000180c:	01010413          	addi	s0,sp,16
    id = ident++;
    80001810:	0000a717          	auipc	a4,0xa
    80001814:	09870713          	addi	a4,a4,152 # 8000b8a8 <_ZN13BackSemaphore5identE>
    80001818:	00072783          	lw	a5,0(a4)
    8000181c:	0017869b          	addiw	a3,a5,1
    80001820:	00d72023          	sw	a3,0(a4)
    80001824:	00f52023          	sw	a5,0(a0)
    val = init;
    80001828:	00b52223          	sw	a1,4(a0)
    sem_queue = nullptr;
    8000182c:	00053423          	sd	zero,8(a0)
    sem_queue_tail = nullptr;
    80001830:	00053823          	sd	zero,16(a0)
}
    80001834:	00813403          	ld	s0,8(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_ZN13BackSemaphoreD1Ev>:

BackSemaphore::~BackSemaphore() {
    PCB* current = sem_queue;
    80001840:	00853503          	ld	a0,8(a0)

    while (current != nullptr) {
    80001844:	04050463          	beqz	a0,8000188c <_ZN13BackSemaphoreD1Ev+0x4c>
BackSemaphore::~BackSemaphore() {
    80001848:	fe010113          	addi	sp,sp,-32
    8000184c:	00113c23          	sd	ra,24(sp)
    80001850:	00813823          	sd	s0,16(sp)
    80001854:	00913423          	sd	s1,8(sp)
    80001858:	02010413          	addi	s0,sp,32
        PCB* next = current->next;
    8000185c:	02853483          	ld	s1,40(a0)

        current->state = ThreadState::READY;
    80001860:	00100793          	li	a5,1
    80001864:	00f52023          	sw	a5,0(a0)
        Scheduler::push(current);
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	2a8080e7          	jalr	680(ra) # 80001b10 <_ZN9Scheduler4pushEP3PCB>

        current = next;
    80001870:	00048513          	mv	a0,s1
    while (current != nullptr) {
    80001874:	fe0494e3          	bnez	s1,8000185c <_ZN13BackSemaphoreD1Ev+0x1c>
    }

    sem_queue = nullptr;
    sem_queue_tail = nullptr;

}
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	02010113          	addi	sp,sp,32
    80001888:	00008067          	ret
    8000188c:	00008067          	ret

0000000080001890 <_ZN13BackSemaphore4waitEv>:


int BackSemaphore::wait() {
    this->val = this->val - 1;
    80001890:	00452783          	lw	a5,4(a0)
    80001894:	fff7879b          	addiw	a5,a5,-1
    80001898:	00f52223          	sw	a5,4(a0)

    if (this->get_val() < 0) {
    8000189c:	02079713          	slli	a4,a5,0x20
    800018a0:	00074663          	bltz	a4,800018ac <_ZN13BackSemaphore4waitEv+0x1c>
        return 0;
    }


    return 0;
}
    800018a4:	00000513          	li	a0,0
    800018a8:	00008067          	ret
int BackSemaphore::wait() {
    800018ac:	ff010113          	addi	sp,sp,-16
    800018b0:	00113423          	sd	ra,8(sp)
    800018b4:	00813023          	sd	s0,0(sp)
    800018b8:	01010413          	addi	s0,sp,16
        if (sem_queue == nullptr) {
    800018bc:	00853783          	ld	a5,8(a0)
    800018c0:	04078663          	beqz	a5,8000190c <_ZN13BackSemaphore4waitEv+0x7c>
            sem_queue_tail->next = PCB::running;
    800018c4:	01053703          	ld	a4,16(a0)
    800018c8:	0000a797          	auipc	a5,0xa
    800018cc:	f707b783          	ld	a5,-144(a5) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018d0:	0007b783          	ld	a5,0(a5)
    800018d4:	02f73423          	sd	a5,40(a4)
            sem_queue_tail = PCB::running;
    800018d8:	00f53823          	sd	a5,16(a0)
        PCB::running->state = ThreadState::BLOCKED;
    800018dc:	0000a797          	auipc	a5,0xa
    800018e0:	f5c7b783          	ld	a5,-164(a5) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x30>
    800018e4:	0007b783          	ld	a5,0(a5)
    800018e8:	00300713          	li	a4,3
    800018ec:	00e7a023          	sw	a4,0(a5)
        PCB::dispatch();
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	d9c080e7          	jalr	-612(ra) # 8000168c <_ZN3PCB8dispatchEv>
}
    800018f8:	00000513          	li	a0,0
    800018fc:	00813083          	ld	ra,8(sp)
    80001900:	00013403          	ld	s0,0(sp)
    80001904:	01010113          	addi	sp,sp,16
    80001908:	00008067          	ret
            sem_queue = PCB::running;
    8000190c:	0000a797          	auipc	a5,0xa
    80001910:	f2c7b783          	ld	a5,-212(a5) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001914:	0007b783          	ld	a5,0(a5)
    80001918:	00f53423          	sd	a5,8(a0)
            sem_queue_tail = PCB::running;
    8000191c:	00f53823          	sd	a5,16(a0)
    80001920:	fbdff06f          	j	800018dc <_ZN13BackSemaphore4waitEv+0x4c>

0000000080001924 <_ZN13BackSemaphore6signalEv>:


int BackSemaphore::signal() {
    this->val = this->val + 1;
    80001924:	00452703          	lw	a4,4(a0)
    80001928:	0017071b          	addiw	a4,a4,1
    8000192c:	0007069b          	sext.w	a3,a4
    80001930:	00e52223          	sw	a4,4(a0)
    if (this->val <= 0 && sem_queue != nullptr) {
    80001934:	00d05663          	blez	a3,80001940 <_ZN13BackSemaphore6signalEv+0x1c>
        pcb->state = ThreadState::READY;
        Scheduler::push(pcb);
    }

    return 0;
}
    80001938:	00000513          	li	a0,0
    8000193c:	00008067          	ret
    80001940:	00050793          	mv	a5,a0
    if (this->val <= 0 && sem_queue != nullptr) {
    80001944:	00853503          	ld	a0,8(a0)
    80001948:	fe0508e3          	beqz	a0,80001938 <_ZN13BackSemaphore6signalEv+0x14>
int BackSemaphore::signal() {
    8000194c:	ff010113          	addi	sp,sp,-16
    80001950:	00113423          	sd	ra,8(sp)
    80001954:	00813023          	sd	s0,0(sp)
    80001958:	01010413          	addi	s0,sp,16
        sem_queue = sem_queue->next;
    8000195c:	02853703          	ld	a4,40(a0)
    80001960:	00e7b423          	sd	a4,8(a5)
        if (sem_queue == nullptr) {
    80001964:	02070463          	beqz	a4,8000198c <_ZN13BackSemaphore6signalEv+0x68>
        pcb->state = ThreadState::READY;
    80001968:	00100793          	li	a5,1
    8000196c:	00f52023          	sw	a5,0(a0)
        Scheduler::push(pcb);
    80001970:	00000097          	auipc	ra,0x0
    80001974:	1a0080e7          	jalr	416(ra) # 80001b10 <_ZN9Scheduler4pushEP3PCB>
}
    80001978:	00000513          	li	a0,0
    8000197c:	00813083          	ld	ra,8(sp)
    80001980:	00013403          	ld	s0,0(sp)
    80001984:	01010113          	addi	sp,sp,16
    80001988:	00008067          	ret
            sem_queue_tail = nullptr;
    8000198c:	0007b823          	sd	zero,16(a5)
    80001990:	fd9ff06f          	j	80001968 <_ZN13BackSemaphore6signalEv+0x44>

0000000080001994 <_ZN13BackSemaphore7tryWaitEv>:


int BackSemaphore::tryWait(){
    80001994:	ff010113          	addi	sp,sp,-16
    80001998:	00813423          	sd	s0,8(sp)
    8000199c:	01010413          	addi	s0,sp,16
    if (this->val > 0) {
    800019a0:	00452783          	lw	a5,4(a0)
    800019a4:	00f05e63          	blez	a5,800019c0 <_ZN13BackSemaphore7tryWaitEv+0x2c>
        this->val = this->val - 1;
    800019a8:	fff7879b          	addiw	a5,a5,-1
    800019ac:	00f52223          	sw	a5,4(a0)
        return 0;
    800019b0:	00000513          	li	a0,0
    if (this->val <= 0) {
        return 1;
    }

    return -1;
}
    800019b4:	00813403          	ld	s0,8(sp)
    800019b8:	01010113          	addi	sp,sp,16
    800019bc:	00008067          	ret
        return 1;
    800019c0:	00100513          	li	a0,1
    800019c4:	ff1ff06f          	j	800019b4 <_ZN13BackSemaphore7tryWaitEv+0x20>

00000000800019c8 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    800019c8:	fe010113          	addi	sp,sp,-32
    800019cc:	00113c23          	sd	ra,24(sp)
    800019d0:	00813823          	sd	s0,16(sp)
    800019d4:	00913423          	sd	s1,8(sp)
    800019d8:	01213023          	sd	s2,0(sp)
    800019dc:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800019e0:	00007517          	auipc	a0,0x7
    800019e4:	64050513          	addi	a0,a0,1600 # 80009020 <CONSOLE_STATUS+0x10>
    800019e8:	00003097          	auipc	ra,0x3
    800019ec:	38c080e7          	jalr	908(ra) # 80004d74 <_Z11printStringPKc>
    int test = getc() - '0';
    800019f0:	00000097          	auipc	ra,0x0
    800019f4:	ad8080e7          	jalr	-1320(ra) # 800014c8 <_Z4getcv>
    800019f8:	00050913          	mv	s2,a0
    800019fc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80001a00:	00000097          	auipc	ra,0x0
    80001a04:	ac8080e7          	jalr	-1336(ra) # 800014c8 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    80001a08:	fcb9091b          	addiw	s2,s2,-53
    80001a0c:	00100793          	li	a5,1
    80001a10:	0327f463          	bgeu	a5,s2,80001a38 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80001a14:	00700793          	li	a5,7
    80001a18:	0e97e263          	bltu	a5,s1,80001afc <_Z8userMainv+0x134>
    80001a1c:	00249493          	slli	s1,s1,0x2
    80001a20:	00008717          	auipc	a4,0x8
    80001a24:	81870713          	addi	a4,a4,-2024 # 80009238 <CONSOLE_STATUS+0x228>
    80001a28:	00e484b3          	add	s1,s1,a4
    80001a2c:	0004a783          	lw	a5,0(s1)
    80001a30:	00e787b3          	add	a5,a5,a4
    80001a34:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    80001a38:	00007517          	auipc	a0,0x7
    80001a3c:	60850513          	addi	a0,a0,1544 # 80009040 <CONSOLE_STATUS+0x30>
    80001a40:	00003097          	auipc	ra,0x3
    80001a44:	334080e7          	jalr	820(ra) # 80004d74 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80001a48:	01813083          	ld	ra,24(sp)
    80001a4c:	01013403          	ld	s0,16(sp)
    80001a50:	00813483          	ld	s1,8(sp)
    80001a54:	00013903          	ld	s2,0(sp)
    80001a58:	02010113          	addi	sp,sp,32
    80001a5c:	00008067          	ret
            Threads_C_API_test();
    80001a60:	00003097          	auipc	ra,0x3
    80001a64:	98c080e7          	jalr	-1652(ra) # 800043ec <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80001a68:	00007517          	auipc	a0,0x7
    80001a6c:	60850513          	addi	a0,a0,1544 # 80009070 <CONSOLE_STATUS+0x60>
    80001a70:	00003097          	auipc	ra,0x3
    80001a74:	304080e7          	jalr	772(ra) # 80004d74 <_Z11printStringPKc>
            break;
    80001a78:	fd1ff06f          	j	80001a48 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80001a7c:	00002097          	auipc	ra,0x2
    80001a80:	850080e7          	jalr	-1968(ra) # 800032cc <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80001a84:	00007517          	auipc	a0,0x7
    80001a88:	62c50513          	addi	a0,a0,1580 # 800090b0 <CONSOLE_STATUS+0xa0>
    80001a8c:	00003097          	auipc	ra,0x3
    80001a90:	2e8080e7          	jalr	744(ra) # 80004d74 <_Z11printStringPKc>
            break;
    80001a94:	fb5ff06f          	j	80001a48 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80001a98:	00001097          	auipc	ra,0x1
    80001a9c:	088080e7          	jalr	136(ra) # 80002b20 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80001aa0:	00007517          	auipc	a0,0x7
    80001aa4:	65050513          	addi	a0,a0,1616 # 800090f0 <CONSOLE_STATUS+0xe0>
    80001aa8:	00003097          	auipc	ra,0x3
    80001aac:	2cc080e7          	jalr	716(ra) # 80004d74 <_Z11printStringPKc>
            break;
    80001ab0:	f99ff06f          	j	80001a48 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80001ab4:	00003097          	auipc	ra,0x3
    80001ab8:	c7c080e7          	jalr	-900(ra) # 80004730 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80001abc:	00007517          	auipc	a0,0x7
    80001ac0:	68450513          	addi	a0,a0,1668 # 80009140 <CONSOLE_STATUS+0x130>
    80001ac4:	00003097          	auipc	ra,0x3
    80001ac8:	2b0080e7          	jalr	688(ra) # 80004d74 <_Z11printStringPKc>
            break;
    80001acc:	f7dff06f          	j	80001a48 <_Z8userMainv+0x80>
            System_Mode_test();
    80001ad0:	00004097          	auipc	ra,0x4
    80001ad4:	f84080e7          	jalr	-124(ra) # 80005a54 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80001ad8:	00007517          	auipc	a0,0x7
    80001adc:	6c050513          	addi	a0,a0,1728 # 80009198 <CONSOLE_STATUS+0x188>
    80001ae0:	00003097          	auipc	ra,0x3
    80001ae4:	294080e7          	jalr	660(ra) # 80004d74 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80001ae8:	00007517          	auipc	a0,0x7
    80001aec:	6d050513          	addi	a0,a0,1744 # 800091b8 <CONSOLE_STATUS+0x1a8>
    80001af0:	00003097          	auipc	ra,0x3
    80001af4:	284080e7          	jalr	644(ra) # 80004d74 <_Z11printStringPKc>
            break;
    80001af8:	f51ff06f          	j	80001a48 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80001afc:	00007517          	auipc	a0,0x7
    80001b00:	71450513          	addi	a0,a0,1812 # 80009210 <CONSOLE_STATUS+0x200>
    80001b04:	00003097          	auipc	ra,0x3
    80001b08:	270080e7          	jalr	624(ra) # 80004d74 <_Z11printStringPKc>
    80001b0c:	f3dff06f          	j	80001a48 <_Z8userMainv+0x80>

0000000080001b10 <_ZN9Scheduler4pushEP3PCB>:
#include "../h/Scheduler.hpp"

PCB* Scheduler::head = nullptr;
PCB* Scheduler::tail = nullptr;

void Scheduler::push(PCB* pcb) {
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00813423          	sd	s0,8(sp)
    80001b18:	01010413          	addi	s0,sp,16
    pcb->next = nullptr;
    80001b1c:	02053423          	sd	zero,40(a0)
    if (tail) {
    80001b20:	0000a797          	auipc	a5,0xa
    80001b24:	d907b783          	ld	a5,-624(a5) # 8000b8b0 <_ZN9Scheduler4tailE>
    80001b28:	00078e63          	beqz	a5,80001b44 <_ZN9Scheduler4pushEP3PCB+0x34>
        tail->next = pcb;
    80001b2c:	02a7b423          	sd	a0,40(a5)
    } else {
        head = pcb;
    }
    tail = pcb;
    80001b30:	0000a797          	auipc	a5,0xa
    80001b34:	d8a7b023          	sd	a0,-640(a5) # 8000b8b0 <_ZN9Scheduler4tailE>
}
    80001b38:	00813403          	ld	s0,8(sp)
    80001b3c:	01010113          	addi	sp,sp,16
    80001b40:	00008067          	ret
        head = pcb;
    80001b44:	0000a797          	auipc	a5,0xa
    80001b48:	d6a7ba23          	sd	a0,-652(a5) # 8000b8b8 <_ZN9Scheduler4headE>
    80001b4c:	fe5ff06f          	j	80001b30 <_ZN9Scheduler4pushEP3PCB+0x20>

0000000080001b50 <_ZN9Scheduler7getNextEv>:

PCB* Scheduler::getNext() {
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00813423          	sd	s0,8(sp)
    80001b58:	01010413          	addi	s0,sp,16
    80001b5c:	0180006f          	j	80001b74 <_ZN9Scheduler7getNextEv+0x24>
        PCB* pcb = head;
        head = head->next;
        pcb->next = nullptr;

        if (!head) {
            tail = nullptr;
    80001b60:	0000a797          	auipc	a5,0xa
    80001b64:	d407b823          	sd	zero,-688(a5) # 8000b8b0 <_ZN9Scheduler4tailE>
        }

        if (pcb->state != ThreadState::FINISHED) {
    80001b68:	00052703          	lw	a4,0(a0)
    80001b6c:	00400793          	li	a5,4
    80001b70:	02f71463          	bne	a4,a5,80001b98 <_ZN9Scheduler7getNextEv+0x48>
    while (head != nullptr) {
    80001b74:	0000a517          	auipc	a0,0xa
    80001b78:	d4453503          	ld	a0,-700(a0) # 8000b8b8 <_ZN9Scheduler4headE>
    80001b7c:	00050e63          	beqz	a0,80001b98 <_ZN9Scheduler7getNextEv+0x48>
        head = head->next;
    80001b80:	02853783          	ld	a5,40(a0)
    80001b84:	0000a717          	auipc	a4,0xa
    80001b88:	d2f73a23          	sd	a5,-716(a4) # 8000b8b8 <_ZN9Scheduler4headE>
        pcb->next = nullptr;
    80001b8c:	02053423          	sd	zero,40(a0)
        if (!head) {
    80001b90:	fc079ce3          	bnez	a5,80001b68 <_ZN9Scheduler7getNextEv+0x18>
    80001b94:	fcdff06f          	j	80001b60 <_ZN9Scheduler7getNextEv+0x10>
        }

    }

    return nullptr;
}
    80001b98:	00813403          	ld	s0,8(sp)
    80001b9c:	01010113          	addi	sp,sp,16
    80001ba0:	00008067          	ret

0000000080001ba4 <_ZN9Scheduler7isEmptyEv>:


bool Scheduler::isEmpty() {
    80001ba4:	ff010113          	addi	sp,sp,-16
    80001ba8:	00813423          	sd	s0,8(sp)
    80001bac:	01010413          	addi	s0,sp,16
    return head == nullptr;
    80001bb0:	0000a517          	auipc	a0,0xa
    80001bb4:	d0853503          	ld	a0,-760(a0) # 8000b8b8 <_ZN9Scheduler4headE>
    80001bb8:	00153513          	seqz	a0,a0
    80001bbc:	00813403          	ld	s0,8(sp)
    80001bc0:	01010113          	addi	sp,sp,16
    80001bc4:	00008067          	ret

0000000080001bc8 <_Z8r_scausev>:
    SIP_SSIP = (1 << 1),
    SIP_STIP = (1 << 5),
    SIP_SEIP = (1 << 9),
};

uint64 r_scause(){
    80001bc8:	fe010113          	addi	sp,sp,-32
    80001bcc:	00813c23          	sd	s0,24(sp)
    80001bd0:	02010413          	addi	s0,sp,32
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001bd4:	142027f3          	csrr	a5,scause
    80001bd8:	fef43423          	sd	a5,-24(s0)
    return scause;
    80001bdc:	fe843503          	ld	a0,-24(s0)
}
    80001be0:	01813403          	ld	s0,24(sp)
    80001be4:	02010113          	addi	sp,sp,32
    80001be8:	00008067          	ret

0000000080001bec <_Z8w_scausem>:

void w_scause(uint64 scause){
    80001bec:	ff010113          	addi	sp,sp,-16
    80001bf0:	00813423          	sd	s0,8(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw scause, %[scause]" : : [scause] "r"(scause));
    80001bf8:	14251073          	csrw	scause,a0
}
    80001bfc:	00813403          	ld	s0,8(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_Z6r_sepcv>:

uint64 r_sepc(){
    80001c08:	fe010113          	addi	sp,sp,-32
    80001c0c:	00813c23          	sd	s0,24(sp)
    80001c10:	02010413          	addi	s0,sp,32
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c14:	141027f3          	csrr	a5,sepc
    80001c18:	fef43423          	sd	a5,-24(s0)
    return sepc;
    80001c1c:	fe843503          	ld	a0,-24(s0)
}
    80001c20:	01813403          	ld	s0,24(sp)
    80001c24:	02010113          	addi	sp,sp,32
    80001c28:	00008067          	ret

0000000080001c2c <_Z6w_sepcm>:

void w_sepc(uint64 sepc){
    80001c2c:	ff010113          	addi	sp,sp,-16
    80001c30:	00813423          	sd	s0,8(sp)
    80001c34:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001c38:	14151073          	csrw	sepc,a0
}
    80001c3c:	00813403          	ld	s0,8(sp)
    80001c40:	01010113          	addi	sp,sp,16
    80001c44:	00008067          	ret

0000000080001c48 <_Z7r_stvecv>:

uint64 r_stvec(){
    80001c48:	fe010113          	addi	sp,sp,-32
    80001c4c:	00813c23          	sd	s0,24(sp)
    80001c50:	02010413          	addi	s0,sp,32
    uint64 volatile stvec;
    __asm__ volatile ("csrr %[stvec], stvec" : [stvec] "=r"(stvec));
    80001c54:	105027f3          	csrr	a5,stvec
    80001c58:	fef43423          	sd	a5,-24(s0)
    return stvec;
    80001c5c:	fe843503          	ld	a0,-24(s0)
}
    80001c60:	01813403          	ld	s0,24(sp)
    80001c64:	02010113          	addi	sp,sp,32
    80001c68:	00008067          	ret

0000000080001c6c <_Z7w_stvecm>:

void w_stvec(uint64 stvec){
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00813423          	sd	s0,8(sp)
    80001c74:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001c78:	10551073          	csrw	stvec,a0
}
    80001c7c:	00813403          	ld	s0,8(sp)
    80001c80:	01010113          	addi	sp,sp,16
    80001c84:	00008067          	ret

0000000080001c88 <_Z7r_stvalv>:

uint64 r_stval(){
    80001c88:	fe010113          	addi	sp,sp,-32
    80001c8c:	00813c23          	sd	s0,24(sp)
    80001c90:	02010413          	addi	s0,sp,32
    uint64 volatile stval;
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80001c94:	143027f3          	csrr	a5,stval
    80001c98:	fef43423          	sd	a5,-24(s0)
    return stval;
    80001c9c:	fe843503          	ld	a0,-24(s0)
}
    80001ca0:	01813403          	ld	s0,24(sp)
    80001ca4:	02010113          	addi	sp,sp,32
    80001ca8:	00008067          	ret

0000000080001cac <_Z7w_stvalm>:

void w_stval(uint64 stval){
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00813423          	sd	s0,8(sp)
    80001cb4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw stval, %[stval]" : : [stval] "r"(stval));
    80001cb8:	14351073          	csrw	stval,a0
}
    80001cbc:	00813403          	ld	s0,8(sp)
    80001cc0:	01010113          	addi	sp,sp,16
    80001cc4:	00008067          	ret

0000000080001cc8 <_Z6ms_sipm>:

void ms_sip(uint64 mask){
    80001cc8:	ff010113          	addi	sp,sp,-16
    80001ccc:	00813423          	sd	s0,8(sp)
    80001cd0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sip, %[mask]" : : [mask] "r"(mask));
    80001cd4:	14452073          	csrs	sip,a0
}
    80001cd8:	00813403          	ld	s0,8(sp)
    80001cdc:	01010113          	addi	sp,sp,16
    80001ce0:	00008067          	ret

0000000080001ce4 <_Z6mc_sipm>:

void mc_sip(uint64 mask){
    80001ce4:	ff010113          	addi	sp,sp,-16
    80001ce8:	00813423          	sd	s0,8(sp)
    80001cec:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001cf0:	14453073          	csrc	sip,a0
}
    80001cf4:	00813403          	ld	s0,8(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <_Z5r_sipv>:

uint64 r_sip(){
    80001d00:	fe010113          	addi	sp,sp,-32
    80001d04:	00813c23          	sd	s0,24(sp)
    80001d08:	02010413          	addi	s0,sp,32
    uint64 volatile sip;
    __asm__ volatile ("csrr %[sip], sip" : [sip] "=r"(sip));
    80001d0c:	144027f3          	csrr	a5,sip
    80001d10:	fef43423          	sd	a5,-24(s0)
    return sip;
    80001d14:	fe843503          	ld	a0,-24(s0)
}
    80001d18:	01813403          	ld	s0,24(sp)
    80001d1c:	02010113          	addi	sp,sp,32
    80001d20:	00008067          	ret

0000000080001d24 <_Z5w_sipm>:

void w_sip(uint64 sip){
    80001d24:	ff010113          	addi	sp,sp,-16
    80001d28:	00813423          	sd	s0,8(sp)
    80001d2c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
    80001d30:	14451073          	csrw	sip,a0
}
    80001d34:	00813403          	ld	s0,8(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret

0000000080001d40 <_Z10ms_sstatusm>:

void ms_sstatus(uint64 mask){
    80001d40:	ff010113          	addi	sp,sp,-16
    80001d44:	00813423          	sd	s0,8(sp)
    80001d48:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001d4c:	10052073          	csrs	sstatus,a0
}
    80001d50:	00813403          	ld	s0,8(sp)
    80001d54:	01010113          	addi	sp,sp,16
    80001d58:	00008067          	ret

0000000080001d5c <_Z10mc_sstatusm>:

void mc_sstatus(uint64 mask){
    80001d5c:	ff010113          	addi	sp,sp,-16
    80001d60:	00813423          	sd	s0,8(sp)
    80001d64:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001d68:	10053073          	csrc	sstatus,a0
}
    80001d6c:	00813403          	ld	s0,8(sp)
    80001d70:	01010113          	addi	sp,sp,16
    80001d74:	00008067          	ret

0000000080001d78 <_Z9r_sstatusv>:

uint64 r_sstatus(){
    80001d78:	fe010113          	addi	sp,sp,-32
    80001d7c:	00813c23          	sd	s0,24(sp)
    80001d80:	02010413          	addi	s0,sp,32
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d84:	100027f3          	csrr	a5,sstatus
    80001d88:	fef43423          	sd	a5,-24(s0)
    return sstatus;
    80001d8c:	fe843503          	ld	a0,-24(s0)
}
    80001d90:	01813403          	ld	s0,24(sp)
    80001d94:	02010113          	addi	sp,sp,32
    80001d98:	00008067          	ret

0000000080001d9c <_Z9w_sstatusm>:

void w_sstatus(uint64 sstatus){
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00813423          	sd	s0,8(sp)
    80001da4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001da8:	10051073          	csrw	sstatus,a0
}
    80001dac:	00813403          	ld	s0,8(sp)
    80001db0:	01010113          	addi	sp,sp,16
    80001db4:	00008067          	ret

0000000080001db8 <_Z6ms_siem>:

void ms_sie(uint64 mask){
    80001db8:	ff010113          	addi	sp,sp,-16
    80001dbc:	00813423          	sd	s0,8(sp)
    80001dc0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sie, %[mask]" : : [mask] "r"(mask));
    80001dc4:	10452073          	csrs	sie,a0
}
    80001dc8:	00813403          	ld	s0,8(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_Z6mc_siem>:

void mc_sie(uint64 mask){
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00813423          	sd	s0,8(sp)
    80001ddc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrc sie, %[mask]" : : [mask] "r"(mask));
    80001de0:	10453073          	csrc	sie,a0
}
    80001de4:	00813403          	ld	s0,8(sp)
    80001de8:	01010113          	addi	sp,sp,16
    80001dec:	00008067          	ret

0000000080001df0 <_Z4r_a0v>:

uint64 r_a0(){
    80001df0:	fe010113          	addi	sp,sp,-32
    80001df4:	00813c23          	sd	s0,24(sp)
    80001df8:	02010413          	addi	s0,sp,32
    uint64 volatile a0;
    __asm__ volatile ("mv %0, a0" : "=r"(a0));
    80001dfc:	00050793          	mv	a5,a0
    80001e00:	fef43423          	sd	a5,-24(s0)
    return a0;
    80001e04:	fe843503          	ld	a0,-24(s0)
}
    80001e08:	01813403          	ld	s0,24(sp)
    80001e0c:	02010113          	addi	sp,sp,32
    80001e10:	00008067          	ret

0000000080001e14 <_Z4w_a0m>:


void w_a0(uint64 writeValue) {
    80001e14:	ff010113          	addi	sp,sp,-16
    80001e18:	00813423          	sd	s0,8(sp)
    80001e1c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("mv a0, %0" : : "r"(writeValue));
    80001e20:	00050513          	mv	a0,a0
    80001e24:	00813403          	ld	s0,8(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret

0000000080001e30 <handleSupervisorTrap>:
#include "../test/printing.hpp"

extern uint64 timerCounter;
extern uint64 is_console;

extern "C" void handleSupervisorTrap(){
    80001e30:	fb010113          	addi	sp,sp,-80
    80001e34:	04113423          	sd	ra,72(sp)
    80001e38:	04813023          	sd	s0,64(sp)
    80001e3c:	02913c23          	sd	s1,56(sp)
    80001e40:	03213823          	sd	s2,48(sp)
    80001e44:	03313423          	sd	s3,40(sp)
    80001e48:	03413023          	sd	s4,32(sp)
    80001e4c:	05010413          	addi	s0,sp,80
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001e50:	142027f3          	csrr	a5,scause
    80001e54:	fcf43423          	sd	a5,-56(s0)
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
    80001e58:	fc843703          	ld	a4,-56(s0)
    80001e5c:	00800793          	li	a5,8
    80001e60:	06f70a63          	beq	a4,a5,80001ed4 <handleSupervisorTrap+0xa4>
    80001e64:	fc843703          	ld	a4,-56(s0)
    80001e68:	00900793          	li	a5,9
    80001e6c:	06f70463          	beq	a4,a5,80001ed4 <handleSupervisorTrap+0xa4>
            };
        }
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));

    } else if (scause == 0x8000000000000001UL)
    80001e70:	fc843703          	ld	a4,-56(s0)
    80001e74:	fff00793          	li	a5,-1
    80001e78:	03f79793          	slli	a5,a5,0x3f
    80001e7c:	00178793          	addi	a5,a5,1
    80001e80:	28f70063          	beq	a4,a5,80002100 <handleSupervisorTrap+0x2d0>
                __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));

            }
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    80001e84:	fc843703          	ld	a4,-56(s0)
    80001e88:	fff00793          	li	a5,-1
    80001e8c:	03f79793          	slli	a5,a5,0x3f
    80001e90:	00978793          	addi	a5,a5,9
    80001e94:	2ef70063          	beq	a4,a5,80002174 <handleSupervisorTrap+0x344>
        console_handler();
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    }
    else{
        printString("ERROR : unexpected trap cause\nscause: ");
    80001e98:	00007517          	auipc	a0,0x7
    80001e9c:	3c050513          	addi	a0,a0,960 # 80009258 <CONSOLE_STATUS+0x248>
    80001ea0:	00003097          	auipc	ra,0x3
    80001ea4:	ed4080e7          	jalr	-300(ra) # 80004d74 <_Z11printStringPKc>
        printInt(scause); printString("\n");
    80001ea8:	fc843503          	ld	a0,-56(s0)
    80001eac:	00000613          	li	a2,0
    80001eb0:	00a00593          	li	a1,10
    80001eb4:	0005051b          	sext.w	a0,a0
    80001eb8:	00003097          	auipc	ra,0x3
    80001ebc:	06c080e7          	jalr	108(ra) # 80004f24 <_Z8printIntiii>
    80001ec0:	00007517          	auipc	a0,0x7
    80001ec4:	2d050513          	addi	a0,a0,720 # 80009190 <CONSOLE_STATUS+0x180>
    80001ec8:	00003097          	auipc	ra,0x3
    80001ecc:	eac080e7          	jalr	-340(ra) # 80004d74 <_Z11printStringPKc>
    }

    80001ed0:	0740006f          	j	80001f44 <handleSupervisorTrap+0x114>
        uint64 volatile f = r_a0();
    80001ed4:	00000097          	auipc	ra,0x0
    80001ed8:	f1c080e7          	jalr	-228(ra) # 80001df0 <_Z4r_a0v>
    80001edc:	faa43823          	sd	a0,-80(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	d28080e7          	jalr	-728(ra) # 80001c08 <_Z6r_sepcv>
    80001ee8:	00450513          	addi	a0,a0,4
    80001eec:	faa43c23          	sd	a0,-72(s0)
        uint64 volatile sstatus = r_sstatus();
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	e88080e7          	jalr	-376(ra) # 80001d78 <_Z9r_sstatusv>
    80001ef8:	fca43023          	sd	a0,-64(s0)
        switch (f) {
    80001efc:	fb043783          	ld	a5,-80(s0)
    80001f00:	04200713          	li	a4,66
    80001f04:	1ef76263          	bltu	a4,a5,800020e8 <handleSupervisorTrap+0x2b8>
    80001f08:	00279793          	slli	a5,a5,0x2
    80001f0c:	00007717          	auipc	a4,0x7
    80001f10:	37470713          	addi	a4,a4,884 # 80009280 <CONSOLE_STATUS+0x270>
    80001f14:	00e787b3          	add	a5,a5,a4
    80001f18:	0007a783          	lw	a5,0(a5)
    80001f1c:	00e787b3          	add	a5,a5,a4
    80001f20:	00078067          	jr	a5
                __asm__ ("mv %[a1], a1" : [a1] "=r"(a1));
    80001f24:	00058513          	mv	a0,a1
                void* addr = MemoryAllocator::allocate(a1);
    80001f28:	00001097          	auipc	ra,0x1
    80001f2c:	81c080e7          	jalr	-2020(ra) # 80002744 <_ZN15MemoryAllocator8allocateEm>
                __asm__ ("mv a0, %0" : : "r"(addr));
    80001f30:	00050513          	mv	a0,a0
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001f34:	fc043783          	ld	a5,-64(s0)
    80001f38:	10079073          	csrw	sstatus,a5
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001f3c:	fb843783          	ld	a5,-72(s0)
    80001f40:	14179073          	csrw	sepc,a5
    80001f44:	04813083          	ld	ra,72(sp)
    80001f48:	04013403          	ld	s0,64(sp)
    80001f4c:	03813483          	ld	s1,56(sp)
    80001f50:	03013903          	ld	s2,48(sp)
    80001f54:	02813983          	ld	s3,40(sp)
    80001f58:	02013a03          	ld	s4,32(sp)
    80001f5c:	05010113          	addi	sp,sp,80
    80001f60:	00008067          	ret
                __asm__ ("mv %[a2], a1" : [a2] "=r"(a2));
    80001f64:	00058513          	mv	a0,a1
                int ret = MemoryAllocator::deallocate(a2);
    80001f68:	00001097          	auipc	ra,0x1
    80001f6c:	854080e7          	jalr	-1964(ra) # 800027bc <_ZN15MemoryAllocator10deallocateEPv>
                __asm__ ("mv a0, %0" : : "r"(ret));
    80001f70:	00050513          	mv	a0,a0
                break;
    80001f74:	fc1ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                size_t ret = MemoryAllocator::get_free_space();
    80001f78:	00001097          	auipc	ra,0x1
    80001f7c:	8f8080e7          	jalr	-1800(ra) # 80002870 <_ZN15MemoryAllocator14get_free_spaceEv>
                __asm__ ("mv a0, %0" : : "r"(ret));
    80001f80:	00050513          	mv	a0,a0
                break;
    80001f84:	fb1ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                size_t ret = MemoryAllocator::get_largest_free_block();
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	92c080e7          	jalr	-1748(ra) # 800028b4 <_ZN15MemoryAllocator22get_largest_free_blockEv>
                __asm__ ("mv a0, %0" : : "r"(ret));
    80001f90:	00050513          	mv	a0,a0
                break;
    80001f94:	fa1ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                __asm__ ("mv %[p], a1" : [p] "=r"(body));
    80001f98:	00058913          	mv	s2,a1
                __asm__ ("mv %[p], a2" : [p] "=r"(arg));
    80001f9c:	00060993          	mv	s3,a2
                __asm__ ("mv %[p], a3" : [p] "=r"(stack));
    80001fa0:	00068a13          	mv	s4,a3
    static PCB* running;
    static PCB* main_thread;

    static void* operator new (size_t size) {
        size_t aligned = MEM_ALIGN(size);
        void* ptr = MemoryAllocator::allocate(aligned);
    80001fa4:	00100513          	li	a0,1
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	79c080e7          	jalr	1948(ra) # 80002744 <_ZN15MemoryAllocator8allocateEm>
    80001fb0:	00050493          	mv	s1,a0
                PCB *pcb = new PCB(body, arg, stack);
    80001fb4:	000a0693          	mv	a3,s4
    80001fb8:	00098613          	mv	a2,s3
    80001fbc:	00090593          	mv	a1,s2
    80001fc0:	fffff097          	auipc	ra,0xfffff
    80001fc4:	668080e7          	jalr	1640(ra) # 80001628 <_ZN3PCBC1EPFvPvES0_S0_>
                __asm__ ("mv a0, %[p]"::[p]"r"(pcb));
    80001fc8:	00048513          	mv	a0,s1
                break;
    80001fcc:	f69ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                PCB::exit();
    80001fd0:	fffff097          	auipc	ra,0xfffff
    80001fd4:	7fc080e7          	jalr	2044(ra) # 800017cc <_ZN3PCB4exitEv>
                __asm__ ("mv a0, %0" : : "r"(ret));
    80001fd8:	00000793          	li	a5,0
    80001fdc:	00078513          	mv	a0,a5
                break;
    80001fe0:	f55ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                PCB::dispatch();
    80001fe4:	fffff097          	auipc	ra,0xfffff
    80001fe8:	6a8080e7          	jalr	1704(ra) # 8000168c <_ZN3PCB8dispatchEv>
                __asm__ ("mv a0, %0" : : "r"(ret));
    80001fec:	00000793          	li	a5,0
    80001ff0:	00078513          	mv	a0,a5
                break;
    80001ff4:	f41ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                __asm__ ("mv %[p], a1" : [p] "=r"(handle));
    80001ff8:	00058513          	mv	a0,a1
                ((PCB*)handle)->start();
    80001ffc:	fffff097          	auipc	ra,0xfffff
    80002000:	654080e7          	jalr	1620(ra) # 80001650 <_ZN3PCB5startEv>
                break;
    80002004:	f31ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                __asm__ ("mv %[p], a1" : [p] "=r"(handle));
    80002008:	00058993          	mv	s3,a1
                __asm__ ("mv %[p], a2" : [p] "=r"(init));
    8000200c:	00060913          	mv	s2,a2
    int get_val() {return val;}

    static void* operator new (size_t size) {
        size_t aligned = MEM_ALIGN(size);

        void* ptr = MemoryAllocator::allocate(aligned);
    80002010:	00100513          	li	a0,1
    80002014:	00000097          	auipc	ra,0x0
    80002018:	730080e7          	jalr	1840(ra) # 80002744 <_ZN15MemoryAllocator8allocateEm>
    8000201c:	00050493          	mv	s1,a0
                *handle = new BackSemaphore(init);
    80002020:	0009059b          	sext.w	a1,s2
    80002024:	fffff097          	auipc	ra,0xfffff
    80002028:	7e0080e7          	jalr	2016(ra) # 80001804 <_ZN13BackSemaphoreC1Ej>
    8000202c:	0099b023          	sd	s1,0(s3)
                int ret = handle ? 0 : -1;
    80002030:	00098863          	beqz	s3,80002040 <handleSupervisorTrap+0x210>
    80002034:	00000793          	li	a5,0
                __asm__ ("mv a0, %[p]"::[p]"r"(ret));
    80002038:	00078513          	mv	a0,a5
                break;
    8000203c:	ef9ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                int ret = handle ? 0 : -1;
    80002040:	fff00793          	li	a5,-1
    80002044:	ff5ff06f          	j	80002038 <handleSupervisorTrap+0x208>
                __asm__ ("mv %[p], a1" : [p] "=r"(handle));
    80002048:	00058493          	mv	s1,a1
                delete handle;
    8000204c:	00048e63          	beqz	s1,80002068 <handleSupervisorTrap+0x238>
    80002050:	00048513          	mv	a0,s1
    80002054:	fffff097          	auipc	ra,0xfffff
    80002058:	7ec080e7          	jalr	2028(ra) # 80001840 <_ZN13BackSemaphoreD1Ev>
        return ptr;
    }

    static void operator delete (void* addr) {
        MemoryAllocator::deallocate(addr);
    8000205c:	00048513          	mv	a0,s1
    80002060:	00000097          	auipc	ra,0x0
    80002064:	75c080e7          	jalr	1884(ra) # 800027bc <_ZN15MemoryAllocator10deallocateEPv>
                __asm__ ("mv a0, %[p]"::[p]"r"(0));
    80002068:	00000793          	li	a5,0
    8000206c:	00078513          	mv	a0,a5
                break;
    80002070:	ec5ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                __asm__ ("mv %[p], a1" : [p] "=r"(handle));
    80002074:	00058513          	mv	a0,a1
                int ret = handle->wait();
    80002078:	00000097          	auipc	ra,0x0
    8000207c:	818080e7          	jalr	-2024(ra) # 80001890 <_ZN13BackSemaphore4waitEv>
                __asm__ ("mv a0, %[p]"::[p]"r"(ret));
    80002080:	00050513          	mv	a0,a0
                break;
    80002084:	eb1ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                __asm__ ("mv %[p], a1" : [p] "=r"(handle));
    80002088:	00058513          	mv	a0,a1
                int ret = handle->signal();
    8000208c:	00000097          	auipc	ra,0x0
    80002090:	898080e7          	jalr	-1896(ra) # 80001924 <_ZN13BackSemaphore6signalEv>
                __asm__ ("mv a0, %[p]"::[p]"r"(ret));
    80002094:	00050513          	mv	a0,a0
                break;
    80002098:	e9dff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                is_console = 1;
    8000209c:	00009497          	auipc	s1,0x9
    800020a0:	78c4b483          	ld	s1,1932(s1) # 8000b828 <_GLOBAL_OFFSET_TABLE_+0x20>
    800020a4:	00100793          	li	a5,1
    800020a8:	00f4b023          	sd	a5,0(s1)
                char c = __getc();
    800020ac:	00006097          	auipc	ra,0x6
    800020b0:	ebc080e7          	jalr	-324(ra) # 80007f68 <__getc>
                __asm__ ("mv a0, %[p]"::[p]"r"(c));
    800020b4:	00050513          	mv	a0,a0
                is_console = 0;
    800020b8:	0004b023          	sd	zero,0(s1)
                break;
    800020bc:	e79ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
                is_console = 1;
    800020c0:	00009497          	auipc	s1,0x9
    800020c4:	7684b483          	ld	s1,1896(s1) # 8000b828 <_GLOBAL_OFFSET_TABLE_+0x20>
    800020c8:	00100793          	li	a5,1
    800020cc:	00f4b023          	sd	a5,0(s1)
                __asm__ ("mv %[p], a1" : [p] "=r"(c));
    800020d0:	00058513          	mv	a0,a1
                __putc(c);
    800020d4:	0ff57513          	andi	a0,a0,255
    800020d8:	00006097          	auipc	ra,0x6
    800020dc:	e54080e7          	jalr	-428(ra) # 80007f2c <__putc>
                is_console = 0;
    800020e0:	0004b023          	sd	zero,0(s1)
                break;
    800020e4:	e51ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
              timerCounter = 0;
    800020e8:	00009797          	auipc	a5,0x9
    800020ec:	7487b783          	ld	a5,1864(a5) # 8000b830 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020f0:	0007b023          	sd	zero,0(a5)
              PCB::dispatch();
    800020f4:	fffff097          	auipc	ra,0xfffff
    800020f8:	598080e7          	jalr	1432(ra) # 8000168c <_ZN3PCB8dispatchEv>
    800020fc:	e39ff06f          	j	80001f34 <handleSupervisorTrap+0x104>
        if (is_console == 0) {
    80002100:	00009797          	auipc	a5,0x9
    80002104:	7287b783          	ld	a5,1832(a5) # 8000b828 <_GLOBAL_OFFSET_TABLE_+0x20>
    80002108:	0007b783          	ld	a5,0(a5)
    8000210c:	02079063          	bnez	a5,8000212c <handleSupervisorTrap+0x2fc>
            timerCounter++;
    80002110:	00009717          	auipc	a4,0x9
    80002114:	72073703          	ld	a4,1824(a4) # 8000b830 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002118:	00073783          	ld	a5,0(a4)
    8000211c:	00178793          	addi	a5,a5,1
    80002120:	00f73023          	sd	a5,0(a4)
            if (timerCounter >= DEFAULT_TIME_SLICE) {
    80002124:	00100713          	li	a4,1
    80002128:	00f76a63          	bltu	a4,a5,8000213c <handleSupervisorTrap+0x30c>
        mc_sip(SIP_SSIP);
    8000212c:	00200513          	li	a0,2
    80002130:	00000097          	auipc	ra,0x0
    80002134:	bb4080e7          	jalr	-1100(ra) # 80001ce4 <_Z6mc_sipm>
    80002138:	e0dff06f          	j	80001f44 <handleSupervisorTrap+0x114>
                uint64 sepc = r_sepc();
    8000213c:	00000097          	auipc	ra,0x0
    80002140:	acc080e7          	jalr	-1332(ra) # 80001c08 <_Z6r_sepcv>
    80002144:	00050493          	mv	s1,a0
                uint64 sstatus = r_sstatus();
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	c30080e7          	jalr	-976(ra) # 80001d78 <_Z9r_sstatusv>
    80002150:	00050913          	mv	s2,a0
                timerCounter = 0;
    80002154:	00009797          	auipc	a5,0x9
    80002158:	6dc7b783          	ld	a5,1756(a5) # 8000b830 <_GLOBAL_OFFSET_TABLE_+0x28>
    8000215c:	0007b023          	sd	zero,0(a5)
                PCB::running->dispatch();
    80002160:	fffff097          	auipc	ra,0xfffff
    80002164:	52c080e7          	jalr	1324(ra) # 8000168c <_ZN3PCB8dispatchEv>
                __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002168:	10091073          	csrw	sstatus,s2
                __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000216c:	14149073          	csrw	sepc,s1
    80002170:	fbdff06f          	j	8000212c <handleSupervisorTrap+0x2fc>
        uint64 sepc = r_sepc();
    80002174:	00000097          	auipc	ra,0x0
    80002178:	a94080e7          	jalr	-1388(ra) # 80001c08 <_Z6r_sepcv>
    8000217c:	00050493          	mv	s1,a0
        uint64 sstatus = r_sstatus();
    80002180:	00000097          	auipc	ra,0x0
    80002184:	bf8080e7          	jalr	-1032(ra) # 80001d78 <_Z9r_sstatusv>
    80002188:	00050913          	mv	s2,a0
        console_handler();
    8000218c:	00006097          	auipc	ra,0x6
    80002190:	e14080e7          	jalr	-492(ra) # 80007fa0 <console_handler>
        __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002194:	10091073          	csrw	sstatus,s2
        __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002198:	14149073          	csrw	sepc,s1
    8000219c:	da9ff06f          	j	80001f44 <handleSupervisorTrap+0x114>
    800021a0:	00050913          	mv	s2,a0
        return ptr;
    }

    static void operator delete (void* addr) {
        MemoryAllocator::deallocate(addr);
    800021a4:	00048513          	mv	a0,s1
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	614080e7          	jalr	1556(ra) # 800027bc <_ZN15MemoryAllocator10deallocateEPv>
    800021b0:	00090513          	mv	a0,s2
    800021b4:	0000b097          	auipc	ra,0xb
    800021b8:	854080e7          	jalr	-1964(ra) # 8000ca08 <_Unwind_Resume>
    800021bc:	00050913          	mv	s2,a0
    800021c0:	00048513          	mv	a0,s1
    800021c4:	00000097          	auipc	ra,0x0
    800021c8:	5f8080e7          	jalr	1528(ra) # 800027bc <_ZN15MemoryAllocator10deallocateEPv>
    800021cc:	00090513          	mv	a0,s2
    800021d0:	0000b097          	auipc	ra,0xb
    800021d4:	838080e7          	jalr	-1992(ra) # 8000ca08 <_Unwind_Resume>

00000000800021d8 <_Z16userMain_wrapperPv>:

void f2(void* arg) {
    __putc('2');
}

void userMain_wrapper(void * noArg){
    800021d8:	ff010113          	addi	sp,sp,-16
    800021dc:	00113423          	sd	ra,8(sp)
    800021e0:	00813023          	sd	s0,0(sp)
    800021e4:	01010413          	addi	s0,sp,16
    userMain();
    800021e8:	fffff097          	auipc	ra,0xfffff
    800021ec:	7e0080e7          	jalr	2016(ra) # 800019c8 <_Z8userMainv>
}
    800021f0:	00813083          	ld	ra,8(sp)
    800021f4:	00013403          	ld	s0,0(sp)
    800021f8:	01010113          	addi	sp,sp,16
    800021fc:	00008067          	ret

0000000080002200 <_Z2f2Pv>:
void f2(void* arg) {
    80002200:	ff010113          	addi	sp,sp,-16
    80002204:	00113423          	sd	ra,8(sp)
    80002208:	00813023          	sd	s0,0(sp)
    8000220c:	01010413          	addi	s0,sp,16
    __putc('2');
    80002210:	03200513          	li	a0,50
    80002214:	00006097          	auipc	ra,0x6
    80002218:	d18080e7          	jalr	-744(ra) # 80007f2c <__putc>
}
    8000221c:	00813083          	ld	ra,8(sp)
    80002220:	00013403          	ld	s0,0(sp)
    80002224:	01010113          	addi	sp,sp,16
    80002228:	00008067          	ret

000000008000222c <main>:
uint64 timerCounter = 0;
uint64 is_console = 0;

int main(){
    8000222c:	fe010113          	addi	sp,sp,-32
    80002230:	00113c23          	sd	ra,24(sp)
    80002234:	00813823          	sd	s0,16(sp)
    80002238:	00913423          	sd	s1,8(sp)
    8000223c:	01213023          	sd	s2,0(sp)
    80002240:	02010413          	addi	s0,sp,32

    timerCounter = timerCounter;
    is_console = is_console;

    MemoryAllocator::mem_init();
    80002244:	00000097          	auipc	ra,0x0
    80002248:	498080e7          	jalr	1176(ra) # 800026dc <_ZN15MemoryAllocator8mem_initEv>
        void* ptr = MemoryAllocator::allocate(aligned);
    8000224c:	00100513          	li	a0,1
    80002250:	00000097          	auipc	ra,0x0
    80002254:	4f4080e7          	jalr	1268(ra) # 80002744 <_ZN15MemoryAllocator8allocateEm>
    80002258:	00050493          	mv	s1,a0
        return ptr;
    8000225c:	00000693          	li	a3,0
    80002260:	00000613          	li	a2,0
    80002264:	00000593          	li	a1,0
    80002268:	fffff097          	auipc	ra,0xfffff
    8000226c:	3c0080e7          	jalr	960(ra) # 80001628 <_ZN3PCBC1EPFvPvES0_S0_>

    PCB::running = new PCB();
    80002270:	00009797          	auipc	a5,0x9
    80002274:	5c87b783          	ld	a5,1480(a5) # 8000b838 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002278:	0097b023          	sd	s1,0(a5)
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(&supervisorTrap));
    8000227c:	00009797          	auipc	a5,0x9
    80002280:	59c7b783          	ld	a5,1436(a5) # 8000b818 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002284:	10579073          	csrw	stvec,a5
    __asm__ volatile("csrs sstatus, 0x02");
    80002288:	10016073          	csrsi	sstatus,2
    void* stack = MemoryAllocator::allocate(MEM_ALIGN(sizeof(uint64)*DEFAULT_STACK_SIZE));
    8000228c:	20000513          	li	a0,512
    80002290:	00000097          	auipc	ra,0x0
    80002294:	4b4080e7          	jalr	1204(ra) # 80002744 <_ZN15MemoryAllocator8allocateEm>
    80002298:	00050913          	mv	s2,a0
        void* ptr = MemoryAllocator::allocate(aligned);
    8000229c:	00100513          	li	a0,1
    800022a0:	00000097          	auipc	ra,0x0
    800022a4:	4a4080e7          	jalr	1188(ra) # 80002744 <_ZN15MemoryAllocator8allocateEm>
    800022a8:	00050493          	mv	s1,a0
    PCB* userMain_thread = new PCB(&userMain_wrapper, nullptr, stack);
    800022ac:	00090693          	mv	a3,s2
    800022b0:	00000613          	li	a2,0
    800022b4:	00000597          	auipc	a1,0x0
    800022b8:	f2458593          	addi	a1,a1,-220 # 800021d8 <_Z16userMain_wrapperPv>
    800022bc:	fffff097          	auipc	ra,0xfffff
    800022c0:	36c080e7          	jalr	876(ra) # 80001628 <_ZN3PCBC1EPFvPvES0_S0_>
    userMain_thread->start();
    800022c4:	00048513          	mv	a0,s1
    800022c8:	fffff097          	auipc	ra,0xfffff
    800022cc:	388080e7          	jalr	904(ra) # 80001650 <_ZN3PCB5startEv>
    while(Scheduler::isEmpty() == false) {
    800022d0:	00000097          	auipc	ra,0x0
    800022d4:	8d4080e7          	jalr	-1836(ra) # 80001ba4 <_ZN9Scheduler7isEmptyEv>
    800022d8:	00051863          	bnez	a0,800022e8 <main+0xbc>
         PCB::dispatch();
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	3b0080e7          	jalr	944(ra) # 8000168c <_ZN3PCB8dispatchEv>
    while(Scheduler::isEmpty() == false) {
    800022e4:	fedff06f          	j	800022d0 <main+0xa4>
    }

    delete PCB::main_thread;
    800022e8:	00009797          	auipc	a5,0x9
    800022ec:	5607b783          	ld	a5,1376(a5) # 8000b848 <_GLOBAL_OFFSET_TABLE_+0x40>
    800022f0:	0007b903          	ld	s2,0(a5)
    800022f4:	00090e63          	beqz	s2,80002310 <main+0xe4>
    800022f8:	00090513          	mv	a0,s2
    800022fc:	fffff097          	auipc	ra,0xfffff
    80002300:	284080e7          	jalr	644(ra) # 80001580 <_ZN3PCBD1Ev>
        MemoryAllocator::deallocate(addr);
    80002304:	00090513          	mv	a0,s2
    80002308:	00000097          	auipc	ra,0x0
    8000230c:	4b4080e7          	jalr	1204(ra) # 800027bc <_ZN15MemoryAllocator10deallocateEPv>
    delete userMain_thread;
    80002310:	00048e63          	beqz	s1,8000232c <main+0x100>
    80002314:	00048513          	mv	a0,s1
    80002318:	fffff097          	auipc	ra,0xfffff
    8000231c:	268080e7          	jalr	616(ra) # 80001580 <_ZN3PCBD1Ev>
    80002320:	00048513          	mv	a0,s1
    80002324:	00000097          	auipc	ra,0x0
    80002328:	498080e7          	jalr	1176(ra) # 800027bc <_ZN15MemoryAllocator10deallocateEPv>

    return 0;
}
    8000232c:	00000513          	li	a0,0
    80002330:	01813083          	ld	ra,24(sp)
    80002334:	01013403          	ld	s0,16(sp)
    80002338:	00813483          	ld	s1,8(sp)
    8000233c:	00013903          	ld	s2,0(sp)
    80002340:	02010113          	addi	sp,sp,32
    80002344:	00008067          	ret
    80002348:	00050913          	mv	s2,a0
    8000234c:	00048513          	mv	a0,s1
    80002350:	00000097          	auipc	ra,0x0
    80002354:	46c080e7          	jalr	1132(ra) # 800027bc <_ZN15MemoryAllocator10deallocateEPv>
    80002358:	00090513          	mv	a0,s2
    8000235c:	0000a097          	auipc	ra,0xa
    80002360:	6ac080e7          	jalr	1708(ra) # 8000ca08 <_Unwind_Resume>
    80002364:	00050913          	mv	s2,a0
    80002368:	00048513          	mv	a0,s1
    8000236c:	00000097          	auipc	ra,0x0
    80002370:	450080e7          	jalr	1104(ra) # 800027bc <_ZN15MemoryAllocator10deallocateEPv>
    80002374:	00090513          	mv	a0,s2
    80002378:	0000a097          	auipc	ra,0xa
    8000237c:	690080e7          	jalr	1680(ra) # 8000ca08 <_Unwind_Resume>

0000000080002380 <_Z7wrapperPv>:
Thread::Thread(void (*body)(void*), void* arg){
    thread_create(&myHandle, body, arg);
}

void wrapper(void* t) {
    if (t) {
    80002380:	02050863          	beqz	a0,800023b0 <_Z7wrapperPv+0x30>
void wrapper(void* t) {
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	00813023          	sd	s0,0(sp)
    80002390:	01010413          	addi	s0,sp,16
        ((Thread*)t)->run();
    80002394:	00053783          	ld	a5,0(a0)
    80002398:	0107b783          	ld	a5,16(a5)
    8000239c:	000780e7          	jalr	a5
    }
}
    800023a0:	00813083          	ld	ra,8(sp)
    800023a4:	00013403          	ld	s0,0(sp)
    800023a8:	01010113          	addi	sp,sp,16
    800023ac:	00008067          	ret
    800023b0:	00008067          	ret

00000000800023b4 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init){
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore(){
    800023b4:	ff010113          	addi	sp,sp,-16
    800023b8:	00113423          	sd	ra,8(sp)
    800023bc:	00813023          	sd	s0,0(sp)
    800023c0:	01010413          	addi	s0,sp,16
    800023c4:	00009797          	auipc	a5,0x9
    800023c8:	28c78793          	addi	a5,a5,652 # 8000b650 <_ZTV9Semaphore+0x10>
    800023cc:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800023d0:	00853503          	ld	a0,8(a0)
    800023d4:	fffff097          	auipc	ra,0xfffff
    800023d8:	034080e7          	jalr	52(ra) # 80001408 <_Z9sem_closeP13BackSemaphore>
}
    800023dc:	00813083          	ld	ra,8(sp)
    800023e0:	00013403          	ld	s0,0(sp)
    800023e4:	01010113          	addi	sp,sp,16
    800023e8:	00008067          	ret

00000000800023ec <_Znwm>:
void* operator new (size_t size){
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00113423          	sd	ra,8(sp)
    800023f4:	00813023          	sd	s0,0(sp)
    800023f8:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    800023fc:	fffff097          	auipc	ra,0xfffff
    80002400:	d90080e7          	jalr	-624(ra) # 8000118c <_Z9mem_allocm>
}
    80002404:	00813083          	ld	ra,8(sp)
    80002408:	00013403          	ld	s0,0(sp)
    8000240c:	01010113          	addi	sp,sp,16
    80002410:	00008067          	ret

0000000080002414 <_ZdlPv>:
void operator delete (void* ptr){
    80002414:	ff010113          	addi	sp,sp,-16
    80002418:	00113423          	sd	ra,8(sp)
    8000241c:	00813023          	sd	s0,0(sp)
    80002420:	01010413          	addi	s0,sp,16
    mem_free(ptr);
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	da4080e7          	jalr	-604(ra) # 800011c8 <_Z8mem_freePv>
}
    8000242c:	00813083          	ld	ra,8(sp)
    80002430:	00013403          	ld	s0,0(sp)
    80002434:	01010113          	addi	sp,sp,16
    80002438:	00008067          	ret

000000008000243c <_ZN6ThreadD1Ev>:
Thread::~Thread(){
    8000243c:	ff010113          	addi	sp,sp,-16
    80002440:	00113423          	sd	ra,8(sp)
    80002444:	00813023          	sd	s0,0(sp)
    80002448:	01010413          	addi	s0,sp,16
    8000244c:	00009797          	auipc	a5,0x9
    80002450:	1dc78793          	addi	a5,a5,476 # 8000b628 <_ZTV6Thread+0x10>
    80002454:	00f53023          	sd	a5,0(a0)
    operator delete(&myHandle);
    80002458:	00850513          	addi	a0,a0,8
    8000245c:	00000097          	auipc	ra,0x0
    80002460:	fb8080e7          	jalr	-72(ra) # 80002414 <_ZdlPv>
}
    80002464:	00813083          	ld	ra,8(sp)
    80002468:	00013403          	ld	s0,0(sp)
    8000246c:	01010113          	addi	sp,sp,16
    80002470:	00008067          	ret

0000000080002474 <_ZN6ThreadD0Ev>:
Thread::~Thread(){
    80002474:	fe010113          	addi	sp,sp,-32
    80002478:	00113c23          	sd	ra,24(sp)
    8000247c:	00813823          	sd	s0,16(sp)
    80002480:	00913423          	sd	s1,8(sp)
    80002484:	02010413          	addi	s0,sp,32
    80002488:	00050493          	mv	s1,a0
}
    8000248c:	00000097          	auipc	ra,0x0
    80002490:	fb0080e7          	jalr	-80(ra) # 8000243c <_ZN6ThreadD1Ev>
    80002494:	00048513          	mv	a0,s1
    80002498:	00000097          	auipc	ra,0x0
    8000249c:	f7c080e7          	jalr	-132(ra) # 80002414 <_ZdlPv>
    800024a0:	01813083          	ld	ra,24(sp)
    800024a4:	01013403          	ld	s0,16(sp)
    800024a8:	00813483          	ld	s1,8(sp)
    800024ac:	02010113          	addi	sp,sp,32
    800024b0:	00008067          	ret

00000000800024b4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore(){
    800024b4:	fe010113          	addi	sp,sp,-32
    800024b8:	00113c23          	sd	ra,24(sp)
    800024bc:	00813823          	sd	s0,16(sp)
    800024c0:	00913423          	sd	s1,8(sp)
    800024c4:	02010413          	addi	s0,sp,32
    800024c8:	00050493          	mv	s1,a0
}
    800024cc:	00000097          	auipc	ra,0x0
    800024d0:	ee8080e7          	jalr	-280(ra) # 800023b4 <_ZN9SemaphoreD1Ev>
    800024d4:	00048513          	mv	a0,s1
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	f3c080e7          	jalr	-196(ra) # 80002414 <_ZdlPv>
    800024e0:	01813083          	ld	ra,24(sp)
    800024e4:	01013403          	ld	s0,16(sp)
    800024e8:	00813483          	ld	s1,8(sp)
    800024ec:	02010113          	addi	sp,sp,32
    800024f0:	00008067          	ret

00000000800024f4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg){
    800024f4:	ff010113          	addi	sp,sp,-16
    800024f8:	00113423          	sd	ra,8(sp)
    800024fc:	00813023          	sd	s0,0(sp)
    80002500:	01010413          	addi	s0,sp,16
    80002504:	00009797          	auipc	a5,0x9
    80002508:	12478793          	addi	a5,a5,292 # 8000b628 <_ZTV6Thread+0x10>
    8000250c:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, body, arg);
    80002510:	00850513          	addi	a0,a0,8
    80002514:	fffff097          	auipc	ra,0xfffff
    80002518:	dac080e7          	jalr	-596(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
}
    8000251c:	00813083          	ld	ra,8(sp)
    80002520:	00013403          	ld	s0,0(sp)
    80002524:	01010113          	addi	sp,sp,16
    80002528:	00008067          	ret

000000008000252c <_ZN6ThreadC1Ev>:
Thread::Thread(){
    8000252c:	ff010113          	addi	sp,sp,-16
    80002530:	00113423          	sd	ra,8(sp)
    80002534:	00813023          	sd	s0,0(sp)
    80002538:	01010413          	addi	s0,sp,16
    8000253c:	00009797          	auipc	a5,0x9
    80002540:	0ec78793          	addi	a5,a5,236 # 8000b628 <_ZTV6Thread+0x10>
    80002544:	00f53023          	sd	a5,0(a0)
    thread_create(&myHandle, &wrapper, this);
    80002548:	00050613          	mv	a2,a0
    8000254c:	00000597          	auipc	a1,0x0
    80002550:	e3458593          	addi	a1,a1,-460 # 80002380 <_Z7wrapperPv>
    80002554:	00850513          	addi	a0,a0,8
    80002558:	fffff097          	auipc	ra,0xfffff
    8000255c:	d68080e7          	jalr	-664(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
}
    80002560:	00813083          	ld	ra,8(sp)
    80002564:	00013403          	ld	s0,0(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret

0000000080002570 <_ZN6Thread5startEv>:
int Thread::start(){
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00113423          	sd	ra,8(sp)
    80002578:	00813023          	sd	s0,0(sp)
    8000257c:	01010413          	addi	s0,sp,16
    thread_start(&myHandle);
    80002580:	00850513          	addi	a0,a0,8
    80002584:	fffff097          	auipc	ra,0xfffff
    80002588:	d04080e7          	jalr	-764(ra) # 80001288 <_Z12thread_startPP3PCB>
}
    8000258c:	00000513          	li	a0,0
    80002590:	00813083          	ld	ra,8(sp)
    80002594:	00013403          	ld	s0,0(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret

00000000800025a0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch(){
    800025a0:	ff010113          	addi	sp,sp,-16
    800025a4:	00113423          	sd	ra,8(sp)
    800025a8:	00813023          	sd	s0,0(sp)
    800025ac:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	ddc080e7          	jalr	-548(ra) # 8000138c <_Z15thread_dispatchv>
}
    800025b8:	00813083          	ld	ra,8(sp)
    800025bc:	00013403          	ld	s0,0(sp)
    800025c0:	01010113          	addi	sp,sp,16
    800025c4:	00008067          	ret

00000000800025c8 <_ZN6Thread5sleepEm>:
int Thread::sleep (time_t) {
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
}
    800025d4:	00000513          	li	a0,0
    800025d8:	00813403          	ld	s0,8(sp)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret

00000000800025e4 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init){
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00113423          	sd	ra,8(sp)
    800025ec:	00813023          	sd	s0,0(sp)
    800025f0:	01010413          	addi	s0,sp,16
    800025f4:	00009797          	auipc	a5,0x9
    800025f8:	05c78793          	addi	a5,a5,92 # 8000b650 <_ZTV9Semaphore+0x10>
    800025fc:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002600:	00850513          	addi	a0,a0,8
    80002604:	fffff097          	auipc	ra,0xfffff
    80002608:	dc0080e7          	jalr	-576(ra) # 800013c4 <_Z8sem_openPP13BackSemaphorej>
}
    8000260c:	00813083          	ld	ra,8(sp)
    80002610:	00013403          	ld	s0,0(sp)
    80002614:	01010113          	addi	sp,sp,16
    80002618:	00008067          	ret

000000008000261c <_ZN9Semaphore4waitEv>:

int Semaphore::wait(){
    8000261c:	ff010113          	addi	sp,sp,-16
    80002620:	00113423          	sd	ra,8(sp)
    80002624:	00813023          	sd	s0,0(sp)
    80002628:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    8000262c:	00853503          	ld	a0,8(a0)
    80002630:	fffff097          	auipc	ra,0xfffff
    80002634:	e18080e7          	jalr	-488(ra) # 80001448 <_Z8sem_waitP13BackSemaphore>
}
    80002638:	00813083          	ld	ra,8(sp)
    8000263c:	00013403          	ld	s0,0(sp)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret

0000000080002648 <_ZN9Semaphore6signalEv>:

int Semaphore::signal(){
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00113423          	sd	ra,8(sp)
    80002650:	00813023          	sd	s0,0(sp)
    80002654:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002658:	00853503          	ld	a0,8(a0)
    8000265c:	fffff097          	auipc	ra,0xfffff
    80002660:	e2c080e7          	jalr	-468(ra) # 80001488 <_Z10sem_signalP13BackSemaphore>
}
    80002664:	00813083          	ld	ra,8(sp)
    80002668:	00013403          	ld	s0,0(sp)
    8000266c:	01010113          	addi	sp,sp,16
    80002670:	00008067          	ret

0000000080002674 <_ZN7Console4getcEv>:

char Console::getc () {
    80002674:	ff010113          	addi	sp,sp,-16
    80002678:	00113423          	sd	ra,8(sp)
    8000267c:	00813023          	sd	s0,0(sp)
    80002680:	01010413          	addi	s0,sp,16
    return __getc();
    80002684:	00006097          	auipc	ra,0x6
    80002688:	8e4080e7          	jalr	-1820(ra) # 80007f68 <__getc>
}
    8000268c:	00813083          	ld	ra,8(sp)
    80002690:	00013403          	ld	s0,0(sp)
    80002694:	01010113          	addi	sp,sp,16
    80002698:	00008067          	ret

000000008000269c <_ZN7Console4putcEc>:
void Console::putc (char c) {
    8000269c:	ff010113          	addi	sp,sp,-16
    800026a0:	00113423          	sd	ra,8(sp)
    800026a4:	00813023          	sd	s0,0(sp)
    800026a8:	01010413          	addi	s0,sp,16
    __putc(c);
    800026ac:	00006097          	auipc	ra,0x6
    800026b0:	880080e7          	jalr	-1920(ra) # 80007f2c <__putc>
}
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN6Thread3runEv>:
 static int sleep (time_t);

 friend void wrapper(void* f);
protected:
 Thread ();
 virtual void run () {}
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00813423          	sd	s0,8(sp)
    800026cc:	01010413          	addi	s0,sp,16
    800026d0:	00813403          	ld	s0,8(sp)
    800026d4:	01010113          	addi	sp,sp,16
    800026d8:	00008067          	ret

00000000800026dc <_ZN15MemoryAllocator8mem_initEv>:

void* MemoryAllocator::heap_start = nullptr;
void* MemoryAllocator::heap_end = nullptr;
BlockInfo* MemoryAllocator::head = nullptr;

void MemoryAllocator::mem_init() {
    800026dc:	ff010113          	addi	sp,sp,-16
    800026e0:	00813423          	sd	s0,8(sp)
    800026e4:	01010413          	addi	s0,sp,16

    heap_start = (void *)(((size_t)HEAP_START_ADDR + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE);
    800026e8:	00009797          	auipc	a5,0x9
    800026ec:	1287b783          	ld	a5,296(a5) # 8000b810 <_GLOBAL_OFFSET_TABLE_+0x8>
    800026f0:	0007b783          	ld	a5,0(a5)
    800026f4:	03f78793          	addi	a5,a5,63
    800026f8:	fc07f793          	andi	a5,a5,-64
    800026fc:	00009697          	auipc	a3,0x9
    80002700:	1d468693          	addi	a3,a3,468 # 8000b8d0 <_ZN15MemoryAllocator10heap_startE>
    80002704:	00f6b023          	sd	a5,0(a3)
    heap_end = (void *)(((size_t)HEAP_END_ADDR) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE);
    80002708:	00009717          	auipc	a4,0x9
    8000270c:	13873703          	ld	a4,312(a4) # 8000b840 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002710:	00073703          	ld	a4,0(a4)
    80002714:	fc077713          	andi	a4,a4,-64
    80002718:	00e6b423          	sd	a4,8(a3)

    head = (BlockInfo*)(heap_start);
    8000271c:	00f6b823          	sd	a5,16(a3)

    head->block_size = (char*)(heap_end) - (char*)(heap_start) - sizeof(BlockInfo);
    80002720:	40f70733          	sub	a4,a4,a5
    80002724:	fe870713          	addi	a4,a4,-24
    80002728:	00e7b423          	sd	a4,8(a5)
    size_t temp = head->block_size;
    temp= temp+ 1;
    head->is_free = TRUE;
    8000272c:	00100713          	li	a4,1
    80002730:	00e7a823          	sw	a4,16(a5)
    head->next = nullptr;
    80002734:	0007b023          	sd	zero,0(a5)
}
    80002738:	00813403          	ld	s0,8(sp)
    8000273c:	01010113          	addi	sp,sp,16
    80002740:	00008067          	ret

0000000080002744 <_ZN15MemoryAllocator8allocateEm>:

void* MemoryAllocator::allocate(size_t requestedSize) {
    80002744:	ff010113          	addi	sp,sp,-16
    80002748:	00813423          	sd	s0,8(sp)
    8000274c:	01010413          	addi	s0,sp,16
    size_t totalSize = requestedSize * MEM_BLOCK_SIZE + sizeof(BlockInfo);
    80002750:	00651713          	slli	a4,a0,0x6

    size_t alignedSize = (totalSize + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE * MEM_BLOCK_SIZE;
    80002754:	04070713          	addi	a4,a4,64

    BlockInfo* current = head;
    80002758:	00009517          	auipc	a0,0x9
    8000275c:	18853503          	ld	a0,392(a0) # 8000b8e0 <_ZN15MemoryAllocator4headE>
    80002760:	0080006f          	j	80002768 <_ZN15MemoryAllocator8allocateEm+0x24>

            void* ret = reinterpret_cast<char *>(current) + sizeof(BlockInfo);
            return ret;
        }

        current = current->next;
    80002764:	00053503          	ld	a0,0(a0)
    while (current != nullptr) {
    80002768:	04050463          	beqz	a0,800027b0 <_ZN15MemoryAllocator8allocateEm+0x6c>
        if (current->is_free && current->block_size >= alignedSize) {
    8000276c:	01052783          	lw	a5,16(a0)
    80002770:	fe078ae3          	beqz	a5,80002764 <_ZN15MemoryAllocator8allocateEm+0x20>
    80002774:	00853783          	ld	a5,8(a0)
    80002778:	fee7e6e3          	bltu	a5,a4,80002764 <_ZN15MemoryAllocator8allocateEm+0x20>
            if (current->block_size > alignedSize + sizeof(BlockInfo)) {
    8000277c:	01870693          	addi	a3,a4,24
    80002780:	02f6f463          	bgeu	a3,a5,800027a8 <_ZN15MemoryAllocator8allocateEm+0x64>
                BlockInfo* newBlock = (BlockInfo*)((char*)(current) + alignedSize);
    80002784:	00e506b3          	add	a3,a0,a4
                newBlock->block_size = current->block_size - alignedSize;
    80002788:	40e787b3          	sub	a5,a5,a4
    8000278c:	00f6b423          	sd	a5,8(a3)
                newBlock->is_free = TRUE;
    80002790:	00100793          	li	a5,1
    80002794:	00f6a823          	sw	a5,16(a3)
                newBlock->next = current->next;
    80002798:	00053783          	ld	a5,0(a0)
    8000279c:	00f6b023          	sd	a5,0(a3)
                current->block_size = alignedSize;
    800027a0:	00e53423          	sd	a4,8(a0)
                current->next = newBlock;
    800027a4:	00d53023          	sd	a3,0(a0)
            current->is_free = FALSE;
    800027a8:	00052823          	sw	zero,16(a0)
            void* ret = reinterpret_cast<char *>(current) + sizeof(BlockInfo);
    800027ac:	01850513          	addi	a0,a0,24
    }

    return nullptr;
}
    800027b0:	00813403          	ld	s0,8(sp)
    800027b4:	01010113          	addi	sp,sp,16
    800027b8:	00008067          	ret

00000000800027bc <_ZN15MemoryAllocator10deallocateEPv>:


int MemoryAllocator::deallocate(void* ptr) {
    800027bc:	ff010113          	addi	sp,sp,-16
    800027c0:	00813423          	sd	s0,8(sp)
    800027c4:	01010413          	addi	s0,sp,16
    if (!ptr) {
    800027c8:	08050063          	beqz	a0,80002848 <_ZN15MemoryAllocator10deallocateEPv+0x8c>
    800027cc:	00050793          	mv	a5,a0
        return -1;
    }

    BlockInfo* block = (BlockInfo*)((char*)(ptr) - sizeof(BlockInfo));
    800027d0:	fe850713          	addi	a4,a0,-24

    if (block < head || block >= heap_end) {
    800027d4:	00009697          	auipc	a3,0x9
    800027d8:	10c6b683          	ld	a3,268(a3) # 8000b8e0 <_ZN15MemoryAllocator4headE>
    800027dc:	06d76a63          	bltu	a4,a3,80002850 <_ZN15MemoryAllocator10deallocateEPv+0x94>
    800027e0:	00009697          	auipc	a3,0x9
    800027e4:	0f86b683          	ld	a3,248(a3) # 8000b8d8 <_ZN15MemoryAllocator8heap_endE>
    800027e8:	06d77c63          	bgeu	a4,a3,80002860 <_ZN15MemoryAllocator10deallocateEPv+0xa4>
        return -1;
    }

    if (block->is_free) {
    800027ec:	ff852503          	lw	a0,-8(a0)
    800027f0:	06051c63          	bnez	a0,80002868 <_ZN15MemoryAllocator10deallocateEPv+0xac>
        return -1;
    }

    block->is_free = TRUE;
    800027f4:	00100713          	li	a4,1
    800027f8:	fee7ac23          	sw	a4,-8(a5)

    BlockInfo* current = head;
    800027fc:	00009697          	auipc	a3,0x9
    80002800:	0e46b683          	ld	a3,228(a3) # 8000b8e0 <_ZN15MemoryAllocator4headE>
    80002804:	0080006f          	j	8000280c <_ZN15MemoryAllocator10deallocateEPv+0x50>
                current->block_size += next->block_size + sizeof(BlockInfo);
                current->next = next->next;
                next = current->next;
            }
        }
        current = current->next;
    80002808:	0006b683          	ld	a3,0(a3)
    while (current) {
    8000280c:	04068463          	beqz	a3,80002854 <_ZN15MemoryAllocator10deallocateEPv+0x98>
        if (current->is_free) {
    80002810:	0106a783          	lw	a5,16(a3)
    80002814:	fe078ae3          	beqz	a5,80002808 <_ZN15MemoryAllocator10deallocateEPv+0x4c>
            BlockInfo* next = current->next;
    80002818:	0006b783          	ld	a5,0(a3)
            while (next && next->is_free) {
    8000281c:	fe0786e3          	beqz	a5,80002808 <_ZN15MemoryAllocator10deallocateEPv+0x4c>
    80002820:	0107a703          	lw	a4,16(a5)
    80002824:	fe0702e3          	beqz	a4,80002808 <_ZN15MemoryAllocator10deallocateEPv+0x4c>
                current->block_size += next->block_size + sizeof(BlockInfo);
    80002828:	0087b703          	ld	a4,8(a5)
    8000282c:	0086b603          	ld	a2,8(a3)
    80002830:	00c70733          	add	a4,a4,a2
    80002834:	01870713          	addi	a4,a4,24
    80002838:	00e6b423          	sd	a4,8(a3)
                current->next = next->next;
    8000283c:	0007b783          	ld	a5,0(a5)
    80002840:	00f6b023          	sd	a5,0(a3)
            while (next && next->is_free) {
    80002844:	fd9ff06f          	j	8000281c <_ZN15MemoryAllocator10deallocateEPv+0x60>
        return -1;
    80002848:	fff00513          	li	a0,-1
    8000284c:	0080006f          	j	80002854 <_ZN15MemoryAllocator10deallocateEPv+0x98>
        return -1;
    80002850:	fff00513          	li	a0,-1
    }

    return 0;
}
    80002854:	00813403          	ld	s0,8(sp)
    80002858:	01010113          	addi	sp,sp,16
    8000285c:	00008067          	ret
        return -1;
    80002860:	fff00513          	li	a0,-1
    80002864:	ff1ff06f          	j	80002854 <_ZN15MemoryAllocator10deallocateEPv+0x98>
        return -1;
    80002868:	fff00513          	li	a0,-1
    8000286c:	fe9ff06f          	j	80002854 <_ZN15MemoryAllocator10deallocateEPv+0x98>

0000000080002870 <_ZN15MemoryAllocator14get_free_spaceEv>:

size_t MemoryAllocator::get_free_space() {
    80002870:	ff010113          	addi	sp,sp,-16
    80002874:	00813423          	sd	s0,8(sp)
    80002878:	01010413          	addi	s0,sp,16
    size_t total = 0;
    BlockInfo* current = head;
    8000287c:	00009797          	auipc	a5,0x9
    80002880:	0647b783          	ld	a5,100(a5) # 8000b8e0 <_ZN15MemoryAllocator4headE>
    size_t total = 0;
    80002884:	00000513          	li	a0,0
    80002888:	0080006f          	j	80002890 <_ZN15MemoryAllocator14get_free_spaceEv+0x20>
    while (current) {
        if (current->is_free) {
            total += current->block_size;
        }
        current = current->next;
    8000288c:	0007b783          	ld	a5,0(a5)
    while (current) {
    80002890:	00078c63          	beqz	a5,800028a8 <_ZN15MemoryAllocator14get_free_spaceEv+0x38>
        if (current->is_free) {
    80002894:	0107a703          	lw	a4,16(a5)
    80002898:	fe070ae3          	beqz	a4,8000288c <_ZN15MemoryAllocator14get_free_spaceEv+0x1c>
            total += current->block_size;
    8000289c:	0087b703          	ld	a4,8(a5)
    800028a0:	00e50533          	add	a0,a0,a4
    800028a4:	fe9ff06f          	j	8000288c <_ZN15MemoryAllocator14get_free_spaceEv+0x1c>
    }
    return total;
}
    800028a8:	00813403          	ld	s0,8(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN15MemoryAllocator22get_largest_free_blockEv>:


size_t MemoryAllocator::get_largest_free_block() {
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00813423          	sd	s0,8(sp)
    800028bc:	01010413          	addi	s0,sp,16
    size_t largest = 0;
    BlockInfo* current = head;
    800028c0:	00009797          	auipc	a5,0x9
    800028c4:	0207b783          	ld	a5,32(a5) # 8000b8e0 <_ZN15MemoryAllocator4headE>
    size_t largest = 0;
    800028c8:	00000513          	li	a0,0
    800028cc:	0080006f          	j	800028d4 <_ZN15MemoryAllocator22get_largest_free_blockEv+0x20>
    while (current) {
        if (current->is_free && current->block_size > largest) {
            largest = current->block_size;
        }
        current = current->next;
    800028d0:	0007b783          	ld	a5,0(a5)
    while (current) {
    800028d4:	00078e63          	beqz	a5,800028f0 <_ZN15MemoryAllocator22get_largest_free_blockEv+0x3c>
        if (current->is_free && current->block_size > largest) {
    800028d8:	0107a703          	lw	a4,16(a5)
    800028dc:	fe070ae3          	beqz	a4,800028d0 <_ZN15MemoryAllocator22get_largest_free_blockEv+0x1c>
    800028e0:	0087b703          	ld	a4,8(a5)
    800028e4:	fee576e3          	bgeu	a0,a4,800028d0 <_ZN15MemoryAllocator22get_largest_free_blockEv+0x1c>
            largest = current->block_size;
    800028e8:	00070513          	mv	a0,a4
    800028ec:	fe5ff06f          	j	800028d0 <_ZN15MemoryAllocator22get_largest_free_blockEv+0x1c>
    }
    return largest;
    800028f0:	00813403          	ld	s0,8(sp)
    800028f4:	01010113          	addi	sp,sp,16
    800028f8:	00008067          	ret

00000000800028fc <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800028fc:	fe010113          	addi	sp,sp,-32
    80002900:	00113c23          	sd	ra,24(sp)
    80002904:	00813823          	sd	s0,16(sp)
    80002908:	00913423          	sd	s1,8(sp)
    8000290c:	01213023          	sd	s2,0(sp)
    80002910:	02010413          	addi	s0,sp,32
    80002914:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002918:	00000913          	li	s2,0
    8000291c:	00c0006f          	j	80002928 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	a6c080e7          	jalr	-1428(ra) # 8000138c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	ba0080e7          	jalr	-1120(ra) # 800014c8 <_Z4getcv>
    80002930:	0005059b          	sext.w	a1,a0
    80002934:	01b00793          	li	a5,27
    80002938:	02f58a63          	beq	a1,a5,8000296c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000293c:	0084b503          	ld	a0,8(s1)
    80002940:	00003097          	auipc	ra,0x3
    80002944:	2ac080e7          	jalr	684(ra) # 80005bec <_ZN6Buffer3putEi>
        i++;
    80002948:	0019071b          	addiw	a4,s2,1
    8000294c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002950:	0004a683          	lw	a3,0(s1)
    80002954:	0026979b          	slliw	a5,a3,0x2
    80002958:	00d787bb          	addw	a5,a5,a3
    8000295c:	0017979b          	slliw	a5,a5,0x1
    80002960:	02f767bb          	remw	a5,a4,a5
    80002964:	fc0792e3          	bnez	a5,80002928 <_ZL16producerKeyboardPv+0x2c>
    80002968:	fb9ff06f          	j	80002920 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000296c:	00100793          	li	a5,1
    80002970:	00009717          	auipc	a4,0x9
    80002974:	f6f72c23          	sw	a5,-136(a4) # 8000b8e8 <_ZL9threadEnd>
    data->buffer->put('!');
    80002978:	02100593          	li	a1,33
    8000297c:	0084b503          	ld	a0,8(s1)
    80002980:	00003097          	auipc	ra,0x3
    80002984:	26c080e7          	jalr	620(ra) # 80005bec <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002988:	0104b503          	ld	a0,16(s1)
    8000298c:	fffff097          	auipc	ra,0xfffff
    80002990:	afc080e7          	jalr	-1284(ra) # 80001488 <_Z10sem_signalP13BackSemaphore>
}
    80002994:	01813083          	ld	ra,24(sp)
    80002998:	01013403          	ld	s0,16(sp)
    8000299c:	00813483          	ld	s1,8(sp)
    800029a0:	00013903          	ld	s2,0(sp)
    800029a4:	02010113          	addi	sp,sp,32
    800029a8:	00008067          	ret

00000000800029ac <_ZL8producerPv>:

static void producer(void *arg) {
    800029ac:	fe010113          	addi	sp,sp,-32
    800029b0:	00113c23          	sd	ra,24(sp)
    800029b4:	00813823          	sd	s0,16(sp)
    800029b8:	00913423          	sd	s1,8(sp)
    800029bc:	01213023          	sd	s2,0(sp)
    800029c0:	02010413          	addi	s0,sp,32
    800029c4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800029c8:	00000913          	li	s2,0
    800029cc:	00c0006f          	j	800029d8 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	9bc080e7          	jalr	-1604(ra) # 8000138c <_Z15thread_dispatchv>
    while (!threadEnd) {
    800029d8:	00009797          	auipc	a5,0x9
    800029dc:	f107a783          	lw	a5,-240(a5) # 8000b8e8 <_ZL9threadEnd>
    800029e0:	02079e63          	bnez	a5,80002a1c <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800029e4:	0004a583          	lw	a1,0(s1)
    800029e8:	0305859b          	addiw	a1,a1,48
    800029ec:	0084b503          	ld	a0,8(s1)
    800029f0:	00003097          	auipc	ra,0x3
    800029f4:	1fc080e7          	jalr	508(ra) # 80005bec <_ZN6Buffer3putEi>
        i++;
    800029f8:	0019071b          	addiw	a4,s2,1
    800029fc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002a00:	0004a683          	lw	a3,0(s1)
    80002a04:	0026979b          	slliw	a5,a3,0x2
    80002a08:	00d787bb          	addw	a5,a5,a3
    80002a0c:	0017979b          	slliw	a5,a5,0x1
    80002a10:	02f767bb          	remw	a5,a4,a5
    80002a14:	fc0792e3          	bnez	a5,800029d8 <_ZL8producerPv+0x2c>
    80002a18:	fb9ff06f          	j	800029d0 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002a1c:	0104b503          	ld	a0,16(s1)
    80002a20:	fffff097          	auipc	ra,0xfffff
    80002a24:	a68080e7          	jalr	-1432(ra) # 80001488 <_Z10sem_signalP13BackSemaphore>
}
    80002a28:	01813083          	ld	ra,24(sp)
    80002a2c:	01013403          	ld	s0,16(sp)
    80002a30:	00813483          	ld	s1,8(sp)
    80002a34:	00013903          	ld	s2,0(sp)
    80002a38:	02010113          	addi	sp,sp,32
    80002a3c:	00008067          	ret

0000000080002a40 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002a40:	fd010113          	addi	sp,sp,-48
    80002a44:	02113423          	sd	ra,40(sp)
    80002a48:	02813023          	sd	s0,32(sp)
    80002a4c:	00913c23          	sd	s1,24(sp)
    80002a50:	01213823          	sd	s2,16(sp)
    80002a54:	01313423          	sd	s3,8(sp)
    80002a58:	03010413          	addi	s0,sp,48
    80002a5c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002a60:	00000993          	li	s3,0
    80002a64:	01c0006f          	j	80002a80 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002a68:	fffff097          	auipc	ra,0xfffff
    80002a6c:	924080e7          	jalr	-1756(ra) # 8000138c <_Z15thread_dispatchv>
    80002a70:	0500006f          	j	80002ac0 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002a74:	00a00513          	li	a0,10
    80002a78:	fffff097          	auipc	ra,0xfffff
    80002a7c:	a90080e7          	jalr	-1392(ra) # 80001508 <_Z4putcc>
    while (!threadEnd) {
    80002a80:	00009797          	auipc	a5,0x9
    80002a84:	e687a783          	lw	a5,-408(a5) # 8000b8e8 <_ZL9threadEnd>
    80002a88:	06079063          	bnez	a5,80002ae8 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002a8c:	00893503          	ld	a0,8(s2)
    80002a90:	00003097          	auipc	ra,0x3
    80002a94:	1ec080e7          	jalr	492(ra) # 80005c7c <_ZN6Buffer3getEv>
        i++;
    80002a98:	0019849b          	addiw	s1,s3,1
    80002a9c:	0004899b          	sext.w	s3,s1
        putc(key);
    80002aa0:	0ff57513          	andi	a0,a0,255
    80002aa4:	fffff097          	auipc	ra,0xfffff
    80002aa8:	a64080e7          	jalr	-1436(ra) # 80001508 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002aac:	00092703          	lw	a4,0(s2)
    80002ab0:	0027179b          	slliw	a5,a4,0x2
    80002ab4:	00e787bb          	addw	a5,a5,a4
    80002ab8:	02f4e7bb          	remw	a5,s1,a5
    80002abc:	fa0786e3          	beqz	a5,80002a68 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002ac0:	05000793          	li	a5,80
    80002ac4:	02f4e4bb          	remw	s1,s1,a5
    80002ac8:	fa049ce3          	bnez	s1,80002a80 <_ZL8consumerPv+0x40>
    80002acc:	fa9ff06f          	j	80002a74 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002ad0:	00893503          	ld	a0,8(s2)
    80002ad4:	00003097          	auipc	ra,0x3
    80002ad8:	1a8080e7          	jalr	424(ra) # 80005c7c <_ZN6Buffer3getEv>
        putc(key);
    80002adc:	0ff57513          	andi	a0,a0,255
    80002ae0:	fffff097          	auipc	ra,0xfffff
    80002ae4:	a28080e7          	jalr	-1496(ra) # 80001508 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002ae8:	00893503          	ld	a0,8(s2)
    80002aec:	00003097          	auipc	ra,0x3
    80002af0:	21c080e7          	jalr	540(ra) # 80005d08 <_ZN6Buffer6getCntEv>
    80002af4:	fca04ee3          	bgtz	a0,80002ad0 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002af8:	01093503          	ld	a0,16(s2)
    80002afc:	fffff097          	auipc	ra,0xfffff
    80002b00:	98c080e7          	jalr	-1652(ra) # 80001488 <_Z10sem_signalP13BackSemaphore>
}
    80002b04:	02813083          	ld	ra,40(sp)
    80002b08:	02013403          	ld	s0,32(sp)
    80002b0c:	01813483          	ld	s1,24(sp)
    80002b10:	01013903          	ld	s2,16(sp)
    80002b14:	00813983          	ld	s3,8(sp)
    80002b18:	03010113          	addi	sp,sp,48
    80002b1c:	00008067          	ret

0000000080002b20 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002b20:	f9010113          	addi	sp,sp,-112
    80002b24:	06113423          	sd	ra,104(sp)
    80002b28:	06813023          	sd	s0,96(sp)
    80002b2c:	04913c23          	sd	s1,88(sp)
    80002b30:	05213823          	sd	s2,80(sp)
    80002b34:	05313423          	sd	s3,72(sp)
    80002b38:	05413023          	sd	s4,64(sp)
    80002b3c:	03513c23          	sd	s5,56(sp)
    80002b40:	03613823          	sd	s6,48(sp)
    80002b44:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002b48:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80002b4c:	00007517          	auipc	a0,0x7
    80002b50:	84450513          	addi	a0,a0,-1980 # 80009390 <CONSOLE_STATUS+0x380>
    80002b54:	00002097          	auipc	ra,0x2
    80002b58:	220080e7          	jalr	544(ra) # 80004d74 <_Z11printStringPKc>
    getString(input, 30);
    80002b5c:	01e00593          	li	a1,30
    80002b60:	fa040493          	addi	s1,s0,-96
    80002b64:	00048513          	mv	a0,s1
    80002b68:	00002097          	auipc	ra,0x2
    80002b6c:	294080e7          	jalr	660(ra) # 80004dfc <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002b70:	00048513          	mv	a0,s1
    80002b74:	00002097          	auipc	ra,0x2
    80002b78:	360080e7          	jalr	864(ra) # 80004ed4 <_Z11stringToIntPKc>
    80002b7c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002b80:	00007517          	auipc	a0,0x7
    80002b84:	83050513          	addi	a0,a0,-2000 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80002b88:	00002097          	auipc	ra,0x2
    80002b8c:	1ec080e7          	jalr	492(ra) # 80004d74 <_Z11printStringPKc>
    getString(input, 30);
    80002b90:	01e00593          	li	a1,30
    80002b94:	00048513          	mv	a0,s1
    80002b98:	00002097          	auipc	ra,0x2
    80002b9c:	264080e7          	jalr	612(ra) # 80004dfc <_Z9getStringPci>
    n = stringToInt(input);
    80002ba0:	00048513          	mv	a0,s1
    80002ba4:	00002097          	auipc	ra,0x2
    80002ba8:	330080e7          	jalr	816(ra) # 80004ed4 <_Z11stringToIntPKc>
    80002bac:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002bb0:	00007517          	auipc	a0,0x7
    80002bb4:	82050513          	addi	a0,a0,-2016 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80002bb8:	00002097          	auipc	ra,0x2
    80002bbc:	1bc080e7          	jalr	444(ra) # 80004d74 <_Z11printStringPKc>
    80002bc0:	00000613          	li	a2,0
    80002bc4:	00a00593          	li	a1,10
    80002bc8:	00090513          	mv	a0,s2
    80002bcc:	00002097          	auipc	ra,0x2
    80002bd0:	358080e7          	jalr	856(ra) # 80004f24 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002bd4:	00007517          	auipc	a0,0x7
    80002bd8:	81450513          	addi	a0,a0,-2028 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80002bdc:	00002097          	auipc	ra,0x2
    80002be0:	198080e7          	jalr	408(ra) # 80004d74 <_Z11printStringPKc>
    80002be4:	00000613          	li	a2,0
    80002be8:	00a00593          	li	a1,10
    80002bec:	00048513          	mv	a0,s1
    80002bf0:	00002097          	auipc	ra,0x2
    80002bf4:	334080e7          	jalr	820(ra) # 80004f24 <_Z8printIntiii>
    printString(".\n");
    80002bf8:	00007517          	auipc	a0,0x7
    80002bfc:	80850513          	addi	a0,a0,-2040 # 80009400 <CONSOLE_STATUS+0x3f0>
    80002c00:	00002097          	auipc	ra,0x2
    80002c04:	174080e7          	jalr	372(ra) # 80004d74 <_Z11printStringPKc>
    if(threadNum > n) {
    80002c08:	0324c463          	blt	s1,s2,80002c30 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80002c0c:	03205c63          	blez	s2,80002c44 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80002c10:	03800513          	li	a0,56
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	7d8080e7          	jalr	2008(ra) # 800023ec <_Znwm>
    80002c1c:	00050a13          	mv	s4,a0
    80002c20:	00048593          	mv	a1,s1
    80002c24:	00003097          	auipc	ra,0x3
    80002c28:	f2c080e7          	jalr	-212(ra) # 80005b50 <_ZN6BufferC1Ei>
    80002c2c:	0300006f          	j	80002c5c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002c30:	00006517          	auipc	a0,0x6
    80002c34:	7d850513          	addi	a0,a0,2008 # 80009408 <CONSOLE_STATUS+0x3f8>
    80002c38:	00002097          	auipc	ra,0x2
    80002c3c:	13c080e7          	jalr	316(ra) # 80004d74 <_Z11printStringPKc>
        return;
    80002c40:	0140006f          	j	80002c54 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002c44:	00007517          	auipc	a0,0x7
    80002c48:	80450513          	addi	a0,a0,-2044 # 80009448 <CONSOLE_STATUS+0x438>
    80002c4c:	00002097          	auipc	ra,0x2
    80002c50:	128080e7          	jalr	296(ra) # 80004d74 <_Z11printStringPKc>
        return;
    80002c54:	000b0113          	mv	sp,s6
    80002c58:	1500006f          	j	80002da8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80002c5c:	00000593          	li	a1,0
    80002c60:	00009517          	auipc	a0,0x9
    80002c64:	c9050513          	addi	a0,a0,-880 # 8000b8f0 <_ZL10waitForAll>
    80002c68:	ffffe097          	auipc	ra,0xffffe
    80002c6c:	75c080e7          	jalr	1884(ra) # 800013c4 <_Z8sem_openPP13BackSemaphorej>
    thread_t threads[threadNum];
    80002c70:	00391793          	slli	a5,s2,0x3
    80002c74:	00f78793          	addi	a5,a5,15
    80002c78:	ff07f793          	andi	a5,a5,-16
    80002c7c:	40f10133          	sub	sp,sp,a5
    80002c80:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002c84:	0019071b          	addiw	a4,s2,1
    80002c88:	00171793          	slli	a5,a4,0x1
    80002c8c:	00e787b3          	add	a5,a5,a4
    80002c90:	00379793          	slli	a5,a5,0x3
    80002c94:	00f78793          	addi	a5,a5,15
    80002c98:	ff07f793          	andi	a5,a5,-16
    80002c9c:	40f10133          	sub	sp,sp,a5
    80002ca0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002ca4:	00191613          	slli	a2,s2,0x1
    80002ca8:	012607b3          	add	a5,a2,s2
    80002cac:	00379793          	slli	a5,a5,0x3
    80002cb0:	00f987b3          	add	a5,s3,a5
    80002cb4:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002cb8:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80002cbc:	00009717          	auipc	a4,0x9
    80002cc0:	c3473703          	ld	a4,-972(a4) # 8000b8f0 <_ZL10waitForAll>
    80002cc4:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002cc8:	00078613          	mv	a2,a5
    80002ccc:	00000597          	auipc	a1,0x0
    80002cd0:	d7458593          	addi	a1,a1,-652 # 80002a40 <_ZL8consumerPv>
    80002cd4:	f9840513          	addi	a0,s0,-104
    80002cd8:	ffffe097          	auipc	ra,0xffffe
    80002cdc:	5e8080e7          	jalr	1512(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002ce0:	00000493          	li	s1,0
    80002ce4:	0280006f          	j	80002d0c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002ce8:	00000597          	auipc	a1,0x0
    80002cec:	c1458593          	addi	a1,a1,-1004 # 800028fc <_ZL16producerKeyboardPv>
                      data + i);
    80002cf0:	00179613          	slli	a2,a5,0x1
    80002cf4:	00f60633          	add	a2,a2,a5
    80002cf8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80002cfc:	00c98633          	add	a2,s3,a2
    80002d00:	ffffe097          	auipc	ra,0xffffe
    80002d04:	5c0080e7          	jalr	1472(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002d08:	0014849b          	addiw	s1,s1,1
    80002d0c:	0524d263          	bge	s1,s2,80002d50 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80002d10:	00149793          	slli	a5,s1,0x1
    80002d14:	009787b3          	add	a5,a5,s1
    80002d18:	00379793          	slli	a5,a5,0x3
    80002d1c:	00f987b3          	add	a5,s3,a5
    80002d20:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80002d24:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80002d28:	00009717          	auipc	a4,0x9
    80002d2c:	bc873703          	ld	a4,-1080(a4) # 8000b8f0 <_ZL10waitForAll>
    80002d30:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002d34:	00048793          	mv	a5,s1
    80002d38:	00349513          	slli	a0,s1,0x3
    80002d3c:	00aa8533          	add	a0,s5,a0
    80002d40:	fa9054e3          	blez	s1,80002ce8 <_Z22producerConsumer_C_APIv+0x1c8>
    80002d44:	00000597          	auipc	a1,0x0
    80002d48:	c6858593          	addi	a1,a1,-920 # 800029ac <_ZL8producerPv>
    80002d4c:	fa5ff06f          	j	80002cf0 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002d50:	ffffe097          	auipc	ra,0xffffe
    80002d54:	63c080e7          	jalr	1596(ra) # 8000138c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002d58:	00000493          	li	s1,0
    80002d5c:	00994e63          	blt	s2,s1,80002d78 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002d60:	00009517          	auipc	a0,0x9
    80002d64:	b9053503          	ld	a0,-1136(a0) # 8000b8f0 <_ZL10waitForAll>
    80002d68:	ffffe097          	auipc	ra,0xffffe
    80002d6c:	6e0080e7          	jalr	1760(ra) # 80001448 <_Z8sem_waitP13BackSemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80002d70:	0014849b          	addiw	s1,s1,1
    80002d74:	fe9ff06f          	j	80002d5c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002d78:	00009517          	auipc	a0,0x9
    80002d7c:	b7853503          	ld	a0,-1160(a0) # 8000b8f0 <_ZL10waitForAll>
    80002d80:	ffffe097          	auipc	ra,0xffffe
    80002d84:	688080e7          	jalr	1672(ra) # 80001408 <_Z9sem_closeP13BackSemaphore>
    delete buffer;
    80002d88:	000a0e63          	beqz	s4,80002da4 <_Z22producerConsumer_C_APIv+0x284>
    80002d8c:	000a0513          	mv	a0,s4
    80002d90:	00003097          	auipc	ra,0x3
    80002d94:	000080e7          	jalr	ra # 80005d90 <_ZN6BufferD1Ev>
    80002d98:	000a0513          	mv	a0,s4
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	678080e7          	jalr	1656(ra) # 80002414 <_ZdlPv>
    80002da4:	000b0113          	mv	sp,s6

}
    80002da8:	f9040113          	addi	sp,s0,-112
    80002dac:	06813083          	ld	ra,104(sp)
    80002db0:	06013403          	ld	s0,96(sp)
    80002db4:	05813483          	ld	s1,88(sp)
    80002db8:	05013903          	ld	s2,80(sp)
    80002dbc:	04813983          	ld	s3,72(sp)
    80002dc0:	04013a03          	ld	s4,64(sp)
    80002dc4:	03813a83          	ld	s5,56(sp)
    80002dc8:	03013b03          	ld	s6,48(sp)
    80002dcc:	07010113          	addi	sp,sp,112
    80002dd0:	00008067          	ret
    80002dd4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002dd8:	000a0513          	mv	a0,s4
    80002ddc:	fffff097          	auipc	ra,0xfffff
    80002de0:	638080e7          	jalr	1592(ra) # 80002414 <_ZdlPv>
    80002de4:	00048513          	mv	a0,s1
    80002de8:	0000a097          	auipc	ra,0xa
    80002dec:	c20080e7          	jalr	-992(ra) # 8000ca08 <_Unwind_Resume>

0000000080002df0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002df0:	fe010113          	addi	sp,sp,-32
    80002df4:	00113c23          	sd	ra,24(sp)
    80002df8:	00813823          	sd	s0,16(sp)
    80002dfc:	00913423          	sd	s1,8(sp)
    80002e00:	01213023          	sd	s2,0(sp)
    80002e04:	02010413          	addi	s0,sp,32
    80002e08:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80002e0c:	00100793          	li	a5,1
    80002e10:	02a7f863          	bgeu	a5,a0,80002e40 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80002e14:	00a00793          	li	a5,10
    80002e18:	02f577b3          	remu	a5,a0,a5
    80002e1c:	02078e63          	beqz	a5,80002e58 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80002e20:	fff48513          	addi	a0,s1,-1
    80002e24:	00000097          	auipc	ra,0x0
    80002e28:	fcc080e7          	jalr	-52(ra) # 80002df0 <_ZL9fibonaccim>
    80002e2c:	00050913          	mv	s2,a0
    80002e30:	ffe48513          	addi	a0,s1,-2
    80002e34:	00000097          	auipc	ra,0x0
    80002e38:	fbc080e7          	jalr	-68(ra) # 80002df0 <_ZL9fibonaccim>
    80002e3c:	00a90533          	add	a0,s2,a0
}
    80002e40:	01813083          	ld	ra,24(sp)
    80002e44:	01013403          	ld	s0,16(sp)
    80002e48:	00813483          	ld	s1,8(sp)
    80002e4c:	00013903          	ld	s2,0(sp)
    80002e50:	02010113          	addi	sp,sp,32
    80002e54:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002e58:	ffffe097          	auipc	ra,0xffffe
    80002e5c:	534080e7          	jalr	1332(ra) # 8000138c <_Z15thread_dispatchv>
    80002e60:	fc1ff06f          	j	80002e20 <_ZL9fibonaccim+0x30>

0000000080002e64 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002e64:	fe010113          	addi	sp,sp,-32
    80002e68:	00113c23          	sd	ra,24(sp)
    80002e6c:	00813823          	sd	s0,16(sp)
    80002e70:	00913423          	sd	s1,8(sp)
    80002e74:	01213023          	sd	s2,0(sp)
    80002e78:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002e7c:	00000913          	li	s2,0
    80002e80:	0380006f          	j	80002eb8 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002e84:	ffffe097          	auipc	ra,0xffffe
    80002e88:	508080e7          	jalr	1288(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002e8c:	00148493          	addi	s1,s1,1
    80002e90:	000027b7          	lui	a5,0x2
    80002e94:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002e98:	0097ee63          	bltu	a5,s1,80002eb4 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002e9c:	00000713          	li	a4,0
    80002ea0:	000077b7          	lui	a5,0x7
    80002ea4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002ea8:	fce7eee3          	bltu	a5,a4,80002e84 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002eac:	00170713          	addi	a4,a4,1
    80002eb0:	ff1ff06f          	j	80002ea0 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002eb4:	00190913          	addi	s2,s2,1
    80002eb8:	00900793          	li	a5,9
    80002ebc:	0527e063          	bltu	a5,s2,80002efc <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002ec0:	00006517          	auipc	a0,0x6
    80002ec4:	5b850513          	addi	a0,a0,1464 # 80009478 <CONSOLE_STATUS+0x468>
    80002ec8:	00002097          	auipc	ra,0x2
    80002ecc:	eac080e7          	jalr	-340(ra) # 80004d74 <_Z11printStringPKc>
    80002ed0:	00000613          	li	a2,0
    80002ed4:	00a00593          	li	a1,10
    80002ed8:	0009051b          	sext.w	a0,s2
    80002edc:	00002097          	auipc	ra,0x2
    80002ee0:	048080e7          	jalr	72(ra) # 80004f24 <_Z8printIntiii>
    80002ee4:	00006517          	auipc	a0,0x6
    80002ee8:	2ac50513          	addi	a0,a0,684 # 80009190 <CONSOLE_STATUS+0x180>
    80002eec:	00002097          	auipc	ra,0x2
    80002ef0:	e88080e7          	jalr	-376(ra) # 80004d74 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002ef4:	00000493          	li	s1,0
    80002ef8:	f99ff06f          	j	80002e90 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002efc:	00006517          	auipc	a0,0x6
    80002f00:	58450513          	addi	a0,a0,1412 # 80009480 <CONSOLE_STATUS+0x470>
    80002f04:	00002097          	auipc	ra,0x2
    80002f08:	e70080e7          	jalr	-400(ra) # 80004d74 <_Z11printStringPKc>
    finishedA = true;
    80002f0c:	00100793          	li	a5,1
    80002f10:	00009717          	auipc	a4,0x9
    80002f14:	9ef70423          	sb	a5,-1560(a4) # 8000b8f8 <_ZL9finishedA>
}
    80002f18:	01813083          	ld	ra,24(sp)
    80002f1c:	01013403          	ld	s0,16(sp)
    80002f20:	00813483          	ld	s1,8(sp)
    80002f24:	00013903          	ld	s2,0(sp)
    80002f28:	02010113          	addi	sp,sp,32
    80002f2c:	00008067          	ret

0000000080002f30 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002f30:	fe010113          	addi	sp,sp,-32
    80002f34:	00113c23          	sd	ra,24(sp)
    80002f38:	00813823          	sd	s0,16(sp)
    80002f3c:	00913423          	sd	s1,8(sp)
    80002f40:	01213023          	sd	s2,0(sp)
    80002f44:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002f48:	00000913          	li	s2,0
    80002f4c:	0380006f          	j	80002f84 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002f50:	ffffe097          	auipc	ra,0xffffe
    80002f54:	43c080e7          	jalr	1084(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002f58:	00148493          	addi	s1,s1,1
    80002f5c:	000027b7          	lui	a5,0x2
    80002f60:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002f64:	0097ee63          	bltu	a5,s1,80002f80 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002f68:	00000713          	li	a4,0
    80002f6c:	000077b7          	lui	a5,0x7
    80002f70:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002f74:	fce7eee3          	bltu	a5,a4,80002f50 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002f78:	00170713          	addi	a4,a4,1
    80002f7c:	ff1ff06f          	j	80002f6c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002f80:	00190913          	addi	s2,s2,1
    80002f84:	00f00793          	li	a5,15
    80002f88:	0527e063          	bltu	a5,s2,80002fc8 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002f8c:	00006517          	auipc	a0,0x6
    80002f90:	50450513          	addi	a0,a0,1284 # 80009490 <CONSOLE_STATUS+0x480>
    80002f94:	00002097          	auipc	ra,0x2
    80002f98:	de0080e7          	jalr	-544(ra) # 80004d74 <_Z11printStringPKc>
    80002f9c:	00000613          	li	a2,0
    80002fa0:	00a00593          	li	a1,10
    80002fa4:	0009051b          	sext.w	a0,s2
    80002fa8:	00002097          	auipc	ra,0x2
    80002fac:	f7c080e7          	jalr	-132(ra) # 80004f24 <_Z8printIntiii>
    80002fb0:	00006517          	auipc	a0,0x6
    80002fb4:	1e050513          	addi	a0,a0,480 # 80009190 <CONSOLE_STATUS+0x180>
    80002fb8:	00002097          	auipc	ra,0x2
    80002fbc:	dbc080e7          	jalr	-580(ra) # 80004d74 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002fc0:	00000493          	li	s1,0
    80002fc4:	f99ff06f          	j	80002f5c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002fc8:	00006517          	auipc	a0,0x6
    80002fcc:	4d050513          	addi	a0,a0,1232 # 80009498 <CONSOLE_STATUS+0x488>
    80002fd0:	00002097          	auipc	ra,0x2
    80002fd4:	da4080e7          	jalr	-604(ra) # 80004d74 <_Z11printStringPKc>
    finishedB = true;
    80002fd8:	00100793          	li	a5,1
    80002fdc:	00009717          	auipc	a4,0x9
    80002fe0:	90f70ea3          	sb	a5,-1763(a4) # 8000b8f9 <_ZL9finishedB>
    thread_dispatch();
    80002fe4:	ffffe097          	auipc	ra,0xffffe
    80002fe8:	3a8080e7          	jalr	936(ra) # 8000138c <_Z15thread_dispatchv>
}
    80002fec:	01813083          	ld	ra,24(sp)
    80002ff0:	01013403          	ld	s0,16(sp)
    80002ff4:	00813483          	ld	s1,8(sp)
    80002ff8:	00013903          	ld	s2,0(sp)
    80002ffc:	02010113          	addi	sp,sp,32
    80003000:	00008067          	ret

0000000080003004 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80003004:	fe010113          	addi	sp,sp,-32
    80003008:	00113c23          	sd	ra,24(sp)
    8000300c:	00813823          	sd	s0,16(sp)
    80003010:	00913423          	sd	s1,8(sp)
    80003014:	01213023          	sd	s2,0(sp)
    80003018:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000301c:	00000493          	li	s1,0
    80003020:	0400006f          	j	80003060 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003024:	00006517          	auipc	a0,0x6
    80003028:	48450513          	addi	a0,a0,1156 # 800094a8 <CONSOLE_STATUS+0x498>
    8000302c:	00002097          	auipc	ra,0x2
    80003030:	d48080e7          	jalr	-696(ra) # 80004d74 <_Z11printStringPKc>
    80003034:	00000613          	li	a2,0
    80003038:	00a00593          	li	a1,10
    8000303c:	00048513          	mv	a0,s1
    80003040:	00002097          	auipc	ra,0x2
    80003044:	ee4080e7          	jalr	-284(ra) # 80004f24 <_Z8printIntiii>
    80003048:	00006517          	auipc	a0,0x6
    8000304c:	14850513          	addi	a0,a0,328 # 80009190 <CONSOLE_STATUS+0x180>
    80003050:	00002097          	auipc	ra,0x2
    80003054:	d24080e7          	jalr	-732(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003058:	0014849b          	addiw	s1,s1,1
    8000305c:	0ff4f493          	andi	s1,s1,255
    80003060:	00200793          	li	a5,2
    80003064:	fc97f0e3          	bgeu	a5,s1,80003024 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003068:	00006517          	auipc	a0,0x6
    8000306c:	44850513          	addi	a0,a0,1096 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80003070:	00002097          	auipc	ra,0x2
    80003074:	d04080e7          	jalr	-764(ra) # 80004d74 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003078:	00700313          	li	t1,7
    thread_dispatch();
    8000307c:	ffffe097          	auipc	ra,0xffffe
    80003080:	310080e7          	jalr	784(ra) # 8000138c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003084:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003088:	00006517          	auipc	a0,0x6
    8000308c:	43850513          	addi	a0,a0,1080 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80003090:	00002097          	auipc	ra,0x2
    80003094:	ce4080e7          	jalr	-796(ra) # 80004d74 <_Z11printStringPKc>
    80003098:	00000613          	li	a2,0
    8000309c:	00a00593          	li	a1,10
    800030a0:	0009051b          	sext.w	a0,s2
    800030a4:	00002097          	auipc	ra,0x2
    800030a8:	e80080e7          	jalr	-384(ra) # 80004f24 <_Z8printIntiii>
    800030ac:	00006517          	auipc	a0,0x6
    800030b0:	0e450513          	addi	a0,a0,228 # 80009190 <CONSOLE_STATUS+0x180>
    800030b4:	00002097          	auipc	ra,0x2
    800030b8:	cc0080e7          	jalr	-832(ra) # 80004d74 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800030bc:	00c00513          	li	a0,12
    800030c0:	00000097          	auipc	ra,0x0
    800030c4:	d30080e7          	jalr	-720(ra) # 80002df0 <_ZL9fibonaccim>
    800030c8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800030cc:	00006517          	auipc	a0,0x6
    800030d0:	3fc50513          	addi	a0,a0,1020 # 800094c8 <CONSOLE_STATUS+0x4b8>
    800030d4:	00002097          	auipc	ra,0x2
    800030d8:	ca0080e7          	jalr	-864(ra) # 80004d74 <_Z11printStringPKc>
    800030dc:	00000613          	li	a2,0
    800030e0:	00a00593          	li	a1,10
    800030e4:	0009051b          	sext.w	a0,s2
    800030e8:	00002097          	auipc	ra,0x2
    800030ec:	e3c080e7          	jalr	-452(ra) # 80004f24 <_Z8printIntiii>
    800030f0:	00006517          	auipc	a0,0x6
    800030f4:	0a050513          	addi	a0,a0,160 # 80009190 <CONSOLE_STATUS+0x180>
    800030f8:	00002097          	auipc	ra,0x2
    800030fc:	c7c080e7          	jalr	-900(ra) # 80004d74 <_Z11printStringPKc>
    80003100:	0400006f          	j	80003140 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80003104:	00006517          	auipc	a0,0x6
    80003108:	3a450513          	addi	a0,a0,932 # 800094a8 <CONSOLE_STATUS+0x498>
    8000310c:	00002097          	auipc	ra,0x2
    80003110:	c68080e7          	jalr	-920(ra) # 80004d74 <_Z11printStringPKc>
    80003114:	00000613          	li	a2,0
    80003118:	00a00593          	li	a1,10
    8000311c:	00048513          	mv	a0,s1
    80003120:	00002097          	auipc	ra,0x2
    80003124:	e04080e7          	jalr	-508(ra) # 80004f24 <_Z8printIntiii>
    80003128:	00006517          	auipc	a0,0x6
    8000312c:	06850513          	addi	a0,a0,104 # 80009190 <CONSOLE_STATUS+0x180>
    80003130:	00002097          	auipc	ra,0x2
    80003134:	c44080e7          	jalr	-956(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003138:	0014849b          	addiw	s1,s1,1
    8000313c:	0ff4f493          	andi	s1,s1,255
    80003140:	00500793          	li	a5,5
    80003144:	fc97f0e3          	bgeu	a5,s1,80003104 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80003148:	00006517          	auipc	a0,0x6
    8000314c:	33850513          	addi	a0,a0,824 # 80009480 <CONSOLE_STATUS+0x470>
    80003150:	00002097          	auipc	ra,0x2
    80003154:	c24080e7          	jalr	-988(ra) # 80004d74 <_Z11printStringPKc>
    finishedC = true;
    80003158:	00100793          	li	a5,1
    8000315c:	00008717          	auipc	a4,0x8
    80003160:	78f70f23          	sb	a5,1950(a4) # 8000b8fa <_ZL9finishedC>
    thread_dispatch();
    80003164:	ffffe097          	auipc	ra,0xffffe
    80003168:	228080e7          	jalr	552(ra) # 8000138c <_Z15thread_dispatchv>
}
    8000316c:	01813083          	ld	ra,24(sp)
    80003170:	01013403          	ld	s0,16(sp)
    80003174:	00813483          	ld	s1,8(sp)
    80003178:	00013903          	ld	s2,0(sp)
    8000317c:	02010113          	addi	sp,sp,32
    80003180:	00008067          	ret

0000000080003184 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003184:	fe010113          	addi	sp,sp,-32
    80003188:	00113c23          	sd	ra,24(sp)
    8000318c:	00813823          	sd	s0,16(sp)
    80003190:	00913423          	sd	s1,8(sp)
    80003194:	01213023          	sd	s2,0(sp)
    80003198:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000319c:	00a00493          	li	s1,10
    800031a0:	0400006f          	j	800031e0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800031a4:	00006517          	auipc	a0,0x6
    800031a8:	33450513          	addi	a0,a0,820 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800031ac:	00002097          	auipc	ra,0x2
    800031b0:	bc8080e7          	jalr	-1080(ra) # 80004d74 <_Z11printStringPKc>
    800031b4:	00000613          	li	a2,0
    800031b8:	00a00593          	li	a1,10
    800031bc:	00048513          	mv	a0,s1
    800031c0:	00002097          	auipc	ra,0x2
    800031c4:	d64080e7          	jalr	-668(ra) # 80004f24 <_Z8printIntiii>
    800031c8:	00006517          	auipc	a0,0x6
    800031cc:	fc850513          	addi	a0,a0,-56 # 80009190 <CONSOLE_STATUS+0x180>
    800031d0:	00002097          	auipc	ra,0x2
    800031d4:	ba4080e7          	jalr	-1116(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800031d8:	0014849b          	addiw	s1,s1,1
    800031dc:	0ff4f493          	andi	s1,s1,255
    800031e0:	00c00793          	li	a5,12
    800031e4:	fc97f0e3          	bgeu	a5,s1,800031a4 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800031e8:	00006517          	auipc	a0,0x6
    800031ec:	2f850513          	addi	a0,a0,760 # 800094e0 <CONSOLE_STATUS+0x4d0>
    800031f0:	00002097          	auipc	ra,0x2
    800031f4:	b84080e7          	jalr	-1148(ra) # 80004d74 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800031f8:	00500313          	li	t1,5
    thread_dispatch();
    800031fc:	ffffe097          	auipc	ra,0xffffe
    80003200:	190080e7          	jalr	400(ra) # 8000138c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003204:	01000513          	li	a0,16
    80003208:	00000097          	auipc	ra,0x0
    8000320c:	be8080e7          	jalr	-1048(ra) # 80002df0 <_ZL9fibonaccim>
    80003210:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003214:	00006517          	auipc	a0,0x6
    80003218:	2dc50513          	addi	a0,a0,732 # 800094f0 <CONSOLE_STATUS+0x4e0>
    8000321c:	00002097          	auipc	ra,0x2
    80003220:	b58080e7          	jalr	-1192(ra) # 80004d74 <_Z11printStringPKc>
    80003224:	00000613          	li	a2,0
    80003228:	00a00593          	li	a1,10
    8000322c:	0009051b          	sext.w	a0,s2
    80003230:	00002097          	auipc	ra,0x2
    80003234:	cf4080e7          	jalr	-780(ra) # 80004f24 <_Z8printIntiii>
    80003238:	00006517          	auipc	a0,0x6
    8000323c:	f5850513          	addi	a0,a0,-168 # 80009190 <CONSOLE_STATUS+0x180>
    80003240:	00002097          	auipc	ra,0x2
    80003244:	b34080e7          	jalr	-1228(ra) # 80004d74 <_Z11printStringPKc>
    80003248:	0400006f          	j	80003288 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000324c:	00006517          	auipc	a0,0x6
    80003250:	28c50513          	addi	a0,a0,652 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003254:	00002097          	auipc	ra,0x2
    80003258:	b20080e7          	jalr	-1248(ra) # 80004d74 <_Z11printStringPKc>
    8000325c:	00000613          	li	a2,0
    80003260:	00a00593          	li	a1,10
    80003264:	00048513          	mv	a0,s1
    80003268:	00002097          	auipc	ra,0x2
    8000326c:	cbc080e7          	jalr	-836(ra) # 80004f24 <_Z8printIntiii>
    80003270:	00006517          	auipc	a0,0x6
    80003274:	f2050513          	addi	a0,a0,-224 # 80009190 <CONSOLE_STATUS+0x180>
    80003278:	00002097          	auipc	ra,0x2
    8000327c:	afc080e7          	jalr	-1284(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003280:	0014849b          	addiw	s1,s1,1
    80003284:	0ff4f493          	andi	s1,s1,255
    80003288:	00f00793          	li	a5,15
    8000328c:	fc97f0e3          	bgeu	a5,s1,8000324c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80003290:	00006517          	auipc	a0,0x6
    80003294:	27050513          	addi	a0,a0,624 # 80009500 <CONSOLE_STATUS+0x4f0>
    80003298:	00002097          	auipc	ra,0x2
    8000329c:	adc080e7          	jalr	-1316(ra) # 80004d74 <_Z11printStringPKc>
    finishedD = true;
    800032a0:	00100793          	li	a5,1
    800032a4:	00008717          	auipc	a4,0x8
    800032a8:	64f70ba3          	sb	a5,1623(a4) # 8000b8fb <_ZL9finishedD>
    thread_dispatch();
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	0e0080e7          	jalr	224(ra) # 8000138c <_Z15thread_dispatchv>
}
    800032b4:	01813083          	ld	ra,24(sp)
    800032b8:	01013403          	ld	s0,16(sp)
    800032bc:	00813483          	ld	s1,8(sp)
    800032c0:	00013903          	ld	s2,0(sp)
    800032c4:	02010113          	addi	sp,sp,32
    800032c8:	00008067          	ret

00000000800032cc <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800032cc:	fc010113          	addi	sp,sp,-64
    800032d0:	02113c23          	sd	ra,56(sp)
    800032d4:	02813823          	sd	s0,48(sp)
    800032d8:	02913423          	sd	s1,40(sp)
    800032dc:	03213023          	sd	s2,32(sp)
    800032e0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800032e4:	02000513          	li	a0,32
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	104080e7          	jalr	260(ra) # 800023ec <_Znwm>
    800032f0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800032f4:	fffff097          	auipc	ra,0xfffff
    800032f8:	238080e7          	jalr	568(ra) # 8000252c <_ZN6ThreadC1Ev>
    800032fc:	00008797          	auipc	a5,0x8
    80003300:	37478793          	addi	a5,a5,884 # 8000b670 <_ZTV7WorkerA+0x10>
    80003304:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80003308:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    8000330c:	00006517          	auipc	a0,0x6
    80003310:	20450513          	addi	a0,a0,516 # 80009510 <CONSOLE_STATUS+0x500>
    80003314:	00002097          	auipc	ra,0x2
    80003318:	a60080e7          	jalr	-1440(ra) # 80004d74 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    8000331c:	02000513          	li	a0,32
    80003320:	fffff097          	auipc	ra,0xfffff
    80003324:	0cc080e7          	jalr	204(ra) # 800023ec <_Znwm>
    80003328:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    8000332c:	fffff097          	auipc	ra,0xfffff
    80003330:	200080e7          	jalr	512(ra) # 8000252c <_ZN6ThreadC1Ev>
    80003334:	00008797          	auipc	a5,0x8
    80003338:	36478793          	addi	a5,a5,868 # 8000b698 <_ZTV7WorkerB+0x10>
    8000333c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80003340:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003344:	00006517          	auipc	a0,0x6
    80003348:	1e450513          	addi	a0,a0,484 # 80009528 <CONSOLE_STATUS+0x518>
    8000334c:	00002097          	auipc	ra,0x2
    80003350:	a28080e7          	jalr	-1496(ra) # 80004d74 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003354:	02000513          	li	a0,32
    80003358:	fffff097          	auipc	ra,0xfffff
    8000335c:	094080e7          	jalr	148(ra) # 800023ec <_Znwm>
    80003360:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003364:	fffff097          	auipc	ra,0xfffff
    80003368:	1c8080e7          	jalr	456(ra) # 8000252c <_ZN6ThreadC1Ev>
    8000336c:	00008797          	auipc	a5,0x8
    80003370:	35478793          	addi	a5,a5,852 # 8000b6c0 <_ZTV7WorkerC+0x10>
    80003374:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003378:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    8000337c:	00006517          	auipc	a0,0x6
    80003380:	1c450513          	addi	a0,a0,452 # 80009540 <CONSOLE_STATUS+0x530>
    80003384:	00002097          	auipc	ra,0x2
    80003388:	9f0080e7          	jalr	-1552(ra) # 80004d74 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    8000338c:	02000513          	li	a0,32
    80003390:	fffff097          	auipc	ra,0xfffff
    80003394:	05c080e7          	jalr	92(ra) # 800023ec <_Znwm>
    80003398:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    8000339c:	fffff097          	auipc	ra,0xfffff
    800033a0:	190080e7          	jalr	400(ra) # 8000252c <_ZN6ThreadC1Ev>
    800033a4:	00008797          	auipc	a5,0x8
    800033a8:	34478793          	addi	a5,a5,836 # 8000b6e8 <_ZTV7WorkerD+0x10>
    800033ac:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800033b0:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800033b4:	00006517          	auipc	a0,0x6
    800033b8:	1a450513          	addi	a0,a0,420 # 80009558 <CONSOLE_STATUS+0x548>
    800033bc:	00002097          	auipc	ra,0x2
    800033c0:	9b8080e7          	jalr	-1608(ra) # 80004d74 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800033c4:	00000493          	li	s1,0
    800033c8:	00300793          	li	a5,3
    800033cc:	0297c663          	blt	a5,s1,800033f8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800033d0:	00349793          	slli	a5,s1,0x3
    800033d4:	fe040713          	addi	a4,s0,-32
    800033d8:	00f707b3          	add	a5,a4,a5
    800033dc:	fe07b503          	ld	a0,-32(a5)
    800033e0:	fffff097          	auipc	ra,0xfffff
    800033e4:	190080e7          	jalr	400(ra) # 80002570 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800033e8:	0014849b          	addiw	s1,s1,1
    800033ec:	fddff06f          	j	800033c8 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800033f0:	fffff097          	auipc	ra,0xfffff
    800033f4:	1b0080e7          	jalr	432(ra) # 800025a0 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800033f8:	00008797          	auipc	a5,0x8
    800033fc:	5007c783          	lbu	a5,1280(a5) # 8000b8f8 <_ZL9finishedA>
    80003400:	fe0788e3          	beqz	a5,800033f0 <_Z20Threads_CPP_API_testv+0x124>
    80003404:	00008797          	auipc	a5,0x8
    80003408:	4f57c783          	lbu	a5,1269(a5) # 8000b8f9 <_ZL9finishedB>
    8000340c:	fe0782e3          	beqz	a5,800033f0 <_Z20Threads_CPP_API_testv+0x124>
    80003410:	00008797          	auipc	a5,0x8
    80003414:	4ea7c783          	lbu	a5,1258(a5) # 8000b8fa <_ZL9finishedC>
    80003418:	fc078ce3          	beqz	a5,800033f0 <_Z20Threads_CPP_API_testv+0x124>
    8000341c:	00008797          	auipc	a5,0x8
    80003420:	4df7c783          	lbu	a5,1247(a5) # 8000b8fb <_ZL9finishedD>
    80003424:	fc0786e3          	beqz	a5,800033f0 <_Z20Threads_CPP_API_testv+0x124>
    80003428:	fc040493          	addi	s1,s0,-64
    8000342c:	0080006f          	j	80003434 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80003430:	00848493          	addi	s1,s1,8
    80003434:	fe040793          	addi	a5,s0,-32
    80003438:	08f48663          	beq	s1,a5,800034c4 <_Z20Threads_CPP_API_testv+0x1f8>
    8000343c:	0004b503          	ld	a0,0(s1)
    80003440:	fe0508e3          	beqz	a0,80003430 <_Z20Threads_CPP_API_testv+0x164>
    80003444:	00053783          	ld	a5,0(a0)
    80003448:	0087b783          	ld	a5,8(a5)
    8000344c:	000780e7          	jalr	a5
    80003450:	fe1ff06f          	j	80003430 <_Z20Threads_CPP_API_testv+0x164>
    80003454:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003458:	00048513          	mv	a0,s1
    8000345c:	fffff097          	auipc	ra,0xfffff
    80003460:	fb8080e7          	jalr	-72(ra) # 80002414 <_ZdlPv>
    80003464:	00090513          	mv	a0,s2
    80003468:	00009097          	auipc	ra,0x9
    8000346c:	5a0080e7          	jalr	1440(ra) # 8000ca08 <_Unwind_Resume>
    80003470:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003474:	00048513          	mv	a0,s1
    80003478:	fffff097          	auipc	ra,0xfffff
    8000347c:	f9c080e7          	jalr	-100(ra) # 80002414 <_ZdlPv>
    80003480:	00090513          	mv	a0,s2
    80003484:	00009097          	auipc	ra,0x9
    80003488:	584080e7          	jalr	1412(ra) # 8000ca08 <_Unwind_Resume>
    8000348c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003490:	00048513          	mv	a0,s1
    80003494:	fffff097          	auipc	ra,0xfffff
    80003498:	f80080e7          	jalr	-128(ra) # 80002414 <_ZdlPv>
    8000349c:	00090513          	mv	a0,s2
    800034a0:	00009097          	auipc	ra,0x9
    800034a4:	568080e7          	jalr	1384(ra) # 8000ca08 <_Unwind_Resume>
    800034a8:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800034ac:	00048513          	mv	a0,s1
    800034b0:	fffff097          	auipc	ra,0xfffff
    800034b4:	f64080e7          	jalr	-156(ra) # 80002414 <_ZdlPv>
    800034b8:	00090513          	mv	a0,s2
    800034bc:	00009097          	auipc	ra,0x9
    800034c0:	54c080e7          	jalr	1356(ra) # 8000ca08 <_Unwind_Resume>
}
    800034c4:	03813083          	ld	ra,56(sp)
    800034c8:	03013403          	ld	s0,48(sp)
    800034cc:	02813483          	ld	s1,40(sp)
    800034d0:	02013903          	ld	s2,32(sp)
    800034d4:	04010113          	addi	sp,sp,64
    800034d8:	00008067          	ret

00000000800034dc <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800034dc:	ff010113          	addi	sp,sp,-16
    800034e0:	00113423          	sd	ra,8(sp)
    800034e4:	00813023          	sd	s0,0(sp)
    800034e8:	01010413          	addi	s0,sp,16
    800034ec:	00008797          	auipc	a5,0x8
    800034f0:	18478793          	addi	a5,a5,388 # 8000b670 <_ZTV7WorkerA+0x10>
    800034f4:	00f53023          	sd	a5,0(a0)
    800034f8:	fffff097          	auipc	ra,0xfffff
    800034fc:	f44080e7          	jalr	-188(ra) # 8000243c <_ZN6ThreadD1Ev>
    80003500:	00813083          	ld	ra,8(sp)
    80003504:	00013403          	ld	s0,0(sp)
    80003508:	01010113          	addi	sp,sp,16
    8000350c:	00008067          	ret

0000000080003510 <_ZN7WorkerAD0Ev>:
    80003510:	fe010113          	addi	sp,sp,-32
    80003514:	00113c23          	sd	ra,24(sp)
    80003518:	00813823          	sd	s0,16(sp)
    8000351c:	00913423          	sd	s1,8(sp)
    80003520:	02010413          	addi	s0,sp,32
    80003524:	00050493          	mv	s1,a0
    80003528:	00008797          	auipc	a5,0x8
    8000352c:	14878793          	addi	a5,a5,328 # 8000b670 <_ZTV7WorkerA+0x10>
    80003530:	00f53023          	sd	a5,0(a0)
    80003534:	fffff097          	auipc	ra,0xfffff
    80003538:	f08080e7          	jalr	-248(ra) # 8000243c <_ZN6ThreadD1Ev>
    8000353c:	00048513          	mv	a0,s1
    80003540:	fffff097          	auipc	ra,0xfffff
    80003544:	ed4080e7          	jalr	-300(ra) # 80002414 <_ZdlPv>
    80003548:	01813083          	ld	ra,24(sp)
    8000354c:	01013403          	ld	s0,16(sp)
    80003550:	00813483          	ld	s1,8(sp)
    80003554:	02010113          	addi	sp,sp,32
    80003558:	00008067          	ret

000000008000355c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000355c:	ff010113          	addi	sp,sp,-16
    80003560:	00113423          	sd	ra,8(sp)
    80003564:	00813023          	sd	s0,0(sp)
    80003568:	01010413          	addi	s0,sp,16
    8000356c:	00008797          	auipc	a5,0x8
    80003570:	12c78793          	addi	a5,a5,300 # 8000b698 <_ZTV7WorkerB+0x10>
    80003574:	00f53023          	sd	a5,0(a0)
    80003578:	fffff097          	auipc	ra,0xfffff
    8000357c:	ec4080e7          	jalr	-316(ra) # 8000243c <_ZN6ThreadD1Ev>
    80003580:	00813083          	ld	ra,8(sp)
    80003584:	00013403          	ld	s0,0(sp)
    80003588:	01010113          	addi	sp,sp,16
    8000358c:	00008067          	ret

0000000080003590 <_ZN7WorkerBD0Ev>:
    80003590:	fe010113          	addi	sp,sp,-32
    80003594:	00113c23          	sd	ra,24(sp)
    80003598:	00813823          	sd	s0,16(sp)
    8000359c:	00913423          	sd	s1,8(sp)
    800035a0:	02010413          	addi	s0,sp,32
    800035a4:	00050493          	mv	s1,a0
    800035a8:	00008797          	auipc	a5,0x8
    800035ac:	0f078793          	addi	a5,a5,240 # 8000b698 <_ZTV7WorkerB+0x10>
    800035b0:	00f53023          	sd	a5,0(a0)
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	e88080e7          	jalr	-376(ra) # 8000243c <_ZN6ThreadD1Ev>
    800035bc:	00048513          	mv	a0,s1
    800035c0:	fffff097          	auipc	ra,0xfffff
    800035c4:	e54080e7          	jalr	-428(ra) # 80002414 <_ZdlPv>
    800035c8:	01813083          	ld	ra,24(sp)
    800035cc:	01013403          	ld	s0,16(sp)
    800035d0:	00813483          	ld	s1,8(sp)
    800035d4:	02010113          	addi	sp,sp,32
    800035d8:	00008067          	ret

00000000800035dc <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800035dc:	ff010113          	addi	sp,sp,-16
    800035e0:	00113423          	sd	ra,8(sp)
    800035e4:	00813023          	sd	s0,0(sp)
    800035e8:	01010413          	addi	s0,sp,16
    800035ec:	00008797          	auipc	a5,0x8
    800035f0:	0d478793          	addi	a5,a5,212 # 8000b6c0 <_ZTV7WorkerC+0x10>
    800035f4:	00f53023          	sd	a5,0(a0)
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	e44080e7          	jalr	-444(ra) # 8000243c <_ZN6ThreadD1Ev>
    80003600:	00813083          	ld	ra,8(sp)
    80003604:	00013403          	ld	s0,0(sp)
    80003608:	01010113          	addi	sp,sp,16
    8000360c:	00008067          	ret

0000000080003610 <_ZN7WorkerCD0Ev>:
    80003610:	fe010113          	addi	sp,sp,-32
    80003614:	00113c23          	sd	ra,24(sp)
    80003618:	00813823          	sd	s0,16(sp)
    8000361c:	00913423          	sd	s1,8(sp)
    80003620:	02010413          	addi	s0,sp,32
    80003624:	00050493          	mv	s1,a0
    80003628:	00008797          	auipc	a5,0x8
    8000362c:	09878793          	addi	a5,a5,152 # 8000b6c0 <_ZTV7WorkerC+0x10>
    80003630:	00f53023          	sd	a5,0(a0)
    80003634:	fffff097          	auipc	ra,0xfffff
    80003638:	e08080e7          	jalr	-504(ra) # 8000243c <_ZN6ThreadD1Ev>
    8000363c:	00048513          	mv	a0,s1
    80003640:	fffff097          	auipc	ra,0xfffff
    80003644:	dd4080e7          	jalr	-556(ra) # 80002414 <_ZdlPv>
    80003648:	01813083          	ld	ra,24(sp)
    8000364c:	01013403          	ld	s0,16(sp)
    80003650:	00813483          	ld	s1,8(sp)
    80003654:	02010113          	addi	sp,sp,32
    80003658:	00008067          	ret

000000008000365c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000365c:	ff010113          	addi	sp,sp,-16
    80003660:	00113423          	sd	ra,8(sp)
    80003664:	00813023          	sd	s0,0(sp)
    80003668:	01010413          	addi	s0,sp,16
    8000366c:	00008797          	auipc	a5,0x8
    80003670:	07c78793          	addi	a5,a5,124 # 8000b6e8 <_ZTV7WorkerD+0x10>
    80003674:	00f53023          	sd	a5,0(a0)
    80003678:	fffff097          	auipc	ra,0xfffff
    8000367c:	dc4080e7          	jalr	-572(ra) # 8000243c <_ZN6ThreadD1Ev>
    80003680:	00813083          	ld	ra,8(sp)
    80003684:	00013403          	ld	s0,0(sp)
    80003688:	01010113          	addi	sp,sp,16
    8000368c:	00008067          	ret

0000000080003690 <_ZN7WorkerDD0Ev>:
    80003690:	fe010113          	addi	sp,sp,-32
    80003694:	00113c23          	sd	ra,24(sp)
    80003698:	00813823          	sd	s0,16(sp)
    8000369c:	00913423          	sd	s1,8(sp)
    800036a0:	02010413          	addi	s0,sp,32
    800036a4:	00050493          	mv	s1,a0
    800036a8:	00008797          	auipc	a5,0x8
    800036ac:	04078793          	addi	a5,a5,64 # 8000b6e8 <_ZTV7WorkerD+0x10>
    800036b0:	00f53023          	sd	a5,0(a0)
    800036b4:	fffff097          	auipc	ra,0xfffff
    800036b8:	d88080e7          	jalr	-632(ra) # 8000243c <_ZN6ThreadD1Ev>
    800036bc:	00048513          	mv	a0,s1
    800036c0:	fffff097          	auipc	ra,0xfffff
    800036c4:	d54080e7          	jalr	-684(ra) # 80002414 <_ZdlPv>
    800036c8:	01813083          	ld	ra,24(sp)
    800036cc:	01013403          	ld	s0,16(sp)
    800036d0:	00813483          	ld	s1,8(sp)
    800036d4:	02010113          	addi	sp,sp,32
    800036d8:	00008067          	ret

00000000800036dc <_ZN7WorkerA3runEv>:
    void run() override {
    800036dc:	ff010113          	addi	sp,sp,-16
    800036e0:	00113423          	sd	ra,8(sp)
    800036e4:	00813023          	sd	s0,0(sp)
    800036e8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800036ec:	00000593          	li	a1,0
    800036f0:	fffff097          	auipc	ra,0xfffff
    800036f4:	774080e7          	jalr	1908(ra) # 80002e64 <_ZN7WorkerA11workerBodyAEPv>
    }
    800036f8:	00813083          	ld	ra,8(sp)
    800036fc:	00013403          	ld	s0,0(sp)
    80003700:	01010113          	addi	sp,sp,16
    80003704:	00008067          	ret

0000000080003708 <_ZN7WorkerB3runEv>:
    void run() override {
    80003708:	ff010113          	addi	sp,sp,-16
    8000370c:	00113423          	sd	ra,8(sp)
    80003710:	00813023          	sd	s0,0(sp)
    80003714:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003718:	00000593          	li	a1,0
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	814080e7          	jalr	-2028(ra) # 80002f30 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003724:	00813083          	ld	ra,8(sp)
    80003728:	00013403          	ld	s0,0(sp)
    8000372c:	01010113          	addi	sp,sp,16
    80003730:	00008067          	ret

0000000080003734 <_ZN7WorkerC3runEv>:
    void run() override {
    80003734:	ff010113          	addi	sp,sp,-16
    80003738:	00113423          	sd	ra,8(sp)
    8000373c:	00813023          	sd	s0,0(sp)
    80003740:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003744:	00000593          	li	a1,0
    80003748:	00000097          	auipc	ra,0x0
    8000374c:	8bc080e7          	jalr	-1860(ra) # 80003004 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003750:	00813083          	ld	ra,8(sp)
    80003754:	00013403          	ld	s0,0(sp)
    80003758:	01010113          	addi	sp,sp,16
    8000375c:	00008067          	ret

0000000080003760 <_ZN7WorkerD3runEv>:
    void run() override {
    80003760:	ff010113          	addi	sp,sp,-16
    80003764:	00113423          	sd	ra,8(sp)
    80003768:	00813023          	sd	s0,0(sp)
    8000376c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003770:	00000593          	li	a1,0
    80003774:	00000097          	auipc	ra,0x0
    80003778:	a10080e7          	jalr	-1520(ra) # 80003184 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000377c:	00813083          	ld	ra,8(sp)
    80003780:	00013403          	ld	s0,0(sp)
    80003784:	01010113          	addi	sp,sp,16
    80003788:	00008067          	ret

000000008000378c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    8000378c:	f8010113          	addi	sp,sp,-128
    80003790:	06113c23          	sd	ra,120(sp)
    80003794:	06813823          	sd	s0,112(sp)
    80003798:	06913423          	sd	s1,104(sp)
    8000379c:	07213023          	sd	s2,96(sp)
    800037a0:	05313c23          	sd	s3,88(sp)
    800037a4:	05413823          	sd	s4,80(sp)
    800037a8:	05513423          	sd	s5,72(sp)
    800037ac:	05613023          	sd	s6,64(sp)
    800037b0:	03713c23          	sd	s7,56(sp)
    800037b4:	03813823          	sd	s8,48(sp)
    800037b8:	03913423          	sd	s9,40(sp)
    800037bc:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    800037c0:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    800037c4:	00006517          	auipc	a0,0x6
    800037c8:	bcc50513          	addi	a0,a0,-1076 # 80009390 <CONSOLE_STATUS+0x380>
    800037cc:	00001097          	auipc	ra,0x1
    800037d0:	5a8080e7          	jalr	1448(ra) # 80004d74 <_Z11printStringPKc>
    getString(input, 30);
    800037d4:	01e00593          	li	a1,30
    800037d8:	f8040493          	addi	s1,s0,-128
    800037dc:	00048513          	mv	a0,s1
    800037e0:	00001097          	auipc	ra,0x1
    800037e4:	61c080e7          	jalr	1564(ra) # 80004dfc <_Z9getStringPci>
    threadNum = stringToInt(input);
    800037e8:	00048513          	mv	a0,s1
    800037ec:	00001097          	auipc	ra,0x1
    800037f0:	6e8080e7          	jalr	1768(ra) # 80004ed4 <_Z11stringToIntPKc>
    800037f4:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    800037f8:	00006517          	auipc	a0,0x6
    800037fc:	bb850513          	addi	a0,a0,-1096 # 800093b0 <CONSOLE_STATUS+0x3a0>
    80003800:	00001097          	auipc	ra,0x1
    80003804:	574080e7          	jalr	1396(ra) # 80004d74 <_Z11printStringPKc>
    getString(input, 30);
    80003808:	01e00593          	li	a1,30
    8000380c:	00048513          	mv	a0,s1
    80003810:	00001097          	auipc	ra,0x1
    80003814:	5ec080e7          	jalr	1516(ra) # 80004dfc <_Z9getStringPci>
    n = stringToInt(input);
    80003818:	00048513          	mv	a0,s1
    8000381c:	00001097          	auipc	ra,0x1
    80003820:	6b8080e7          	jalr	1720(ra) # 80004ed4 <_Z11stringToIntPKc>
    80003824:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003828:	00006517          	auipc	a0,0x6
    8000382c:	ba850513          	addi	a0,a0,-1112 # 800093d0 <CONSOLE_STATUS+0x3c0>
    80003830:	00001097          	auipc	ra,0x1
    80003834:	544080e7          	jalr	1348(ra) # 80004d74 <_Z11printStringPKc>
    printInt(threadNum);
    80003838:	00000613          	li	a2,0
    8000383c:	00a00593          	li	a1,10
    80003840:	00098513          	mv	a0,s3
    80003844:	00001097          	auipc	ra,0x1
    80003848:	6e0080e7          	jalr	1760(ra) # 80004f24 <_Z8printIntiii>
    printString(" i velicina bafera ");
    8000384c:	00006517          	auipc	a0,0x6
    80003850:	b9c50513          	addi	a0,a0,-1124 # 800093e8 <CONSOLE_STATUS+0x3d8>
    80003854:	00001097          	auipc	ra,0x1
    80003858:	520080e7          	jalr	1312(ra) # 80004d74 <_Z11printStringPKc>
    printInt(n);
    8000385c:	00000613          	li	a2,0
    80003860:	00a00593          	li	a1,10
    80003864:	00048513          	mv	a0,s1
    80003868:	00001097          	auipc	ra,0x1
    8000386c:	6bc080e7          	jalr	1724(ra) # 80004f24 <_Z8printIntiii>
    printString(".\n");
    80003870:	00006517          	auipc	a0,0x6
    80003874:	b9050513          	addi	a0,a0,-1136 # 80009400 <CONSOLE_STATUS+0x3f0>
    80003878:	00001097          	auipc	ra,0x1
    8000387c:	4fc080e7          	jalr	1276(ra) # 80004d74 <_Z11printStringPKc>
    if (threadNum > n) {
    80003880:	0334c463          	blt	s1,s3,800038a8 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003884:	03305c63          	blez	s3,800038bc <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003888:	03800513          	li	a0,56
    8000388c:	fffff097          	auipc	ra,0xfffff
    80003890:	b60080e7          	jalr	-1184(ra) # 800023ec <_Znwm>
    80003894:	00050a93          	mv	s5,a0
    80003898:	00048593          	mv	a1,s1
    8000389c:	00001097          	auipc	ra,0x1
    800038a0:	7a8080e7          	jalr	1960(ra) # 80005044 <_ZN9BufferCPPC1Ei>
    800038a4:	0300006f          	j	800038d4 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800038a8:	00006517          	auipc	a0,0x6
    800038ac:	b6050513          	addi	a0,a0,-1184 # 80009408 <CONSOLE_STATUS+0x3f8>
    800038b0:	00001097          	auipc	ra,0x1
    800038b4:	4c4080e7          	jalr	1220(ra) # 80004d74 <_Z11printStringPKc>
        return;
    800038b8:	0140006f          	j	800038cc <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800038bc:	00006517          	auipc	a0,0x6
    800038c0:	b8c50513          	addi	a0,a0,-1140 # 80009448 <CONSOLE_STATUS+0x438>
    800038c4:	00001097          	auipc	ra,0x1
    800038c8:	4b0080e7          	jalr	1200(ra) # 80004d74 <_Z11printStringPKc>
        return;
    800038cc:	000c0113          	mv	sp,s8
    800038d0:	2140006f          	j	80003ae4 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    800038d4:	01000513          	li	a0,16
    800038d8:	fffff097          	auipc	ra,0xfffff
    800038dc:	b14080e7          	jalr	-1260(ra) # 800023ec <_Znwm>
    800038e0:	00050913          	mv	s2,a0
    800038e4:	00000593          	li	a1,0
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	cfc080e7          	jalr	-772(ra) # 800025e4 <_ZN9SemaphoreC1Ej>
    800038f0:	00008797          	auipc	a5,0x8
    800038f4:	0127bc23          	sd	s2,24(a5) # 8000b908 <_ZL10waitForAll>
    Thread *producers[threadNum];
    800038f8:	00399793          	slli	a5,s3,0x3
    800038fc:	00f78793          	addi	a5,a5,15
    80003900:	ff07f793          	andi	a5,a5,-16
    80003904:	40f10133          	sub	sp,sp,a5
    80003908:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    8000390c:	0019871b          	addiw	a4,s3,1
    80003910:	00171793          	slli	a5,a4,0x1
    80003914:	00e787b3          	add	a5,a5,a4
    80003918:	00379793          	slli	a5,a5,0x3
    8000391c:	00f78793          	addi	a5,a5,15
    80003920:	ff07f793          	andi	a5,a5,-16
    80003924:	40f10133          	sub	sp,sp,a5
    80003928:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    8000392c:	00199493          	slli	s1,s3,0x1
    80003930:	013484b3          	add	s1,s1,s3
    80003934:	00349493          	slli	s1,s1,0x3
    80003938:	009b04b3          	add	s1,s6,s1
    8000393c:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003940:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003944:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003948:	02800513          	li	a0,40
    8000394c:	fffff097          	auipc	ra,0xfffff
    80003950:	aa0080e7          	jalr	-1376(ra) # 800023ec <_Znwm>
    80003954:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003958:	fffff097          	auipc	ra,0xfffff
    8000395c:	bd4080e7          	jalr	-1068(ra) # 8000252c <_ZN6ThreadC1Ev>
    80003960:	00008797          	auipc	a5,0x8
    80003964:	e0078793          	addi	a5,a5,-512 # 8000b760 <_ZTV8Consumer+0x10>
    80003968:	00fbb023          	sd	a5,0(s7)
    8000396c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003970:	000b8513          	mv	a0,s7
    80003974:	fffff097          	auipc	ra,0xfffff
    80003978:	bfc080e7          	jalr	-1028(ra) # 80002570 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000397c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003980:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003984:	00008797          	auipc	a5,0x8
    80003988:	f847b783          	ld	a5,-124(a5) # 8000b908 <_ZL10waitForAll>
    8000398c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003990:	02800513          	li	a0,40
    80003994:	fffff097          	auipc	ra,0xfffff
    80003998:	a58080e7          	jalr	-1448(ra) # 800023ec <_Znwm>
    8000399c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    800039a0:	fffff097          	auipc	ra,0xfffff
    800039a4:	b8c080e7          	jalr	-1140(ra) # 8000252c <_ZN6ThreadC1Ev>
    800039a8:	00008797          	auipc	a5,0x8
    800039ac:	d6878793          	addi	a5,a5,-664 # 8000b710 <_ZTV16ProducerKeyborad+0x10>
    800039b0:	00f4b023          	sd	a5,0(s1)
    800039b4:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    800039b8:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    800039bc:	00048513          	mv	a0,s1
    800039c0:	fffff097          	auipc	ra,0xfffff
    800039c4:	bb0080e7          	jalr	-1104(ra) # 80002570 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800039c8:	00100913          	li	s2,1
    800039cc:	0300006f          	j	800039fc <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800039d0:	00008797          	auipc	a5,0x8
    800039d4:	d6878793          	addi	a5,a5,-664 # 8000b738 <_ZTV8Producer+0x10>
    800039d8:	00fcb023          	sd	a5,0(s9)
    800039dc:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    800039e0:	00391793          	slli	a5,s2,0x3
    800039e4:	00fa07b3          	add	a5,s4,a5
    800039e8:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    800039ec:	000c8513          	mv	a0,s9
    800039f0:	fffff097          	auipc	ra,0xfffff
    800039f4:	b80080e7          	jalr	-1152(ra) # 80002570 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    800039f8:	0019091b          	addiw	s2,s2,1
    800039fc:	05395263          	bge	s2,s3,80003a40 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003a00:	00191493          	slli	s1,s2,0x1
    80003a04:	012484b3          	add	s1,s1,s2
    80003a08:	00349493          	slli	s1,s1,0x3
    80003a0c:	009b04b3          	add	s1,s6,s1
    80003a10:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003a14:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003a18:	00008797          	auipc	a5,0x8
    80003a1c:	ef07b783          	ld	a5,-272(a5) # 8000b908 <_ZL10waitForAll>
    80003a20:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003a24:	02800513          	li	a0,40
    80003a28:	fffff097          	auipc	ra,0xfffff
    80003a2c:	9c4080e7          	jalr	-1596(ra) # 800023ec <_Znwm>
    80003a30:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003a34:	fffff097          	auipc	ra,0xfffff
    80003a38:	af8080e7          	jalr	-1288(ra) # 8000252c <_ZN6ThreadC1Ev>
    80003a3c:	f95ff06f          	j	800039d0 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003a40:	fffff097          	auipc	ra,0xfffff
    80003a44:	b60080e7          	jalr	-1184(ra) # 800025a0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003a48:	00000493          	li	s1,0
    80003a4c:	0099ce63          	blt	s3,s1,80003a68 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003a50:	00008517          	auipc	a0,0x8
    80003a54:	eb853503          	ld	a0,-328(a0) # 8000b908 <_ZL10waitForAll>
    80003a58:	fffff097          	auipc	ra,0xfffff
    80003a5c:	bc4080e7          	jalr	-1084(ra) # 8000261c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003a60:	0014849b          	addiw	s1,s1,1
    80003a64:	fe9ff06f          	j	80003a4c <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003a68:	00008517          	auipc	a0,0x8
    80003a6c:	ea053503          	ld	a0,-352(a0) # 8000b908 <_ZL10waitForAll>
    80003a70:	00050863          	beqz	a0,80003a80 <_Z20testConsumerProducerv+0x2f4>
    80003a74:	00053783          	ld	a5,0(a0)
    80003a78:	0087b783          	ld	a5,8(a5)
    80003a7c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003a80:	00000493          	li	s1,0
    80003a84:	0080006f          	j	80003a8c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003a88:	0014849b          	addiw	s1,s1,1
    80003a8c:	0334d263          	bge	s1,s3,80003ab0 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003a90:	00349793          	slli	a5,s1,0x3
    80003a94:	00fa07b3          	add	a5,s4,a5
    80003a98:	0007b503          	ld	a0,0(a5)
    80003a9c:	fe0506e3          	beqz	a0,80003a88 <_Z20testConsumerProducerv+0x2fc>
    80003aa0:	00053783          	ld	a5,0(a0)
    80003aa4:	0087b783          	ld	a5,8(a5)
    80003aa8:	000780e7          	jalr	a5
    80003aac:	fddff06f          	j	80003a88 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003ab0:	000b8a63          	beqz	s7,80003ac4 <_Z20testConsumerProducerv+0x338>
    80003ab4:	000bb783          	ld	a5,0(s7)
    80003ab8:	0087b783          	ld	a5,8(a5)
    80003abc:	000b8513          	mv	a0,s7
    80003ac0:	000780e7          	jalr	a5
    delete buffer;
    80003ac4:	000a8e63          	beqz	s5,80003ae0 <_Z20testConsumerProducerv+0x354>
    80003ac8:	000a8513          	mv	a0,s5
    80003acc:	00002097          	auipc	ra,0x2
    80003ad0:	870080e7          	jalr	-1936(ra) # 8000533c <_ZN9BufferCPPD1Ev>
    80003ad4:	000a8513          	mv	a0,s5
    80003ad8:	fffff097          	auipc	ra,0xfffff
    80003adc:	93c080e7          	jalr	-1732(ra) # 80002414 <_ZdlPv>
    80003ae0:	000c0113          	mv	sp,s8
}
    80003ae4:	f8040113          	addi	sp,s0,-128
    80003ae8:	07813083          	ld	ra,120(sp)
    80003aec:	07013403          	ld	s0,112(sp)
    80003af0:	06813483          	ld	s1,104(sp)
    80003af4:	06013903          	ld	s2,96(sp)
    80003af8:	05813983          	ld	s3,88(sp)
    80003afc:	05013a03          	ld	s4,80(sp)
    80003b00:	04813a83          	ld	s5,72(sp)
    80003b04:	04013b03          	ld	s6,64(sp)
    80003b08:	03813b83          	ld	s7,56(sp)
    80003b0c:	03013c03          	ld	s8,48(sp)
    80003b10:	02813c83          	ld	s9,40(sp)
    80003b14:	08010113          	addi	sp,sp,128
    80003b18:	00008067          	ret
    80003b1c:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003b20:	000a8513          	mv	a0,s5
    80003b24:	fffff097          	auipc	ra,0xfffff
    80003b28:	8f0080e7          	jalr	-1808(ra) # 80002414 <_ZdlPv>
    80003b2c:	00048513          	mv	a0,s1
    80003b30:	00009097          	auipc	ra,0x9
    80003b34:	ed8080e7          	jalr	-296(ra) # 8000ca08 <_Unwind_Resume>
    80003b38:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80003b3c:	00090513          	mv	a0,s2
    80003b40:	fffff097          	auipc	ra,0xfffff
    80003b44:	8d4080e7          	jalr	-1836(ra) # 80002414 <_ZdlPv>
    80003b48:	00048513          	mv	a0,s1
    80003b4c:	00009097          	auipc	ra,0x9
    80003b50:	ebc080e7          	jalr	-324(ra) # 8000ca08 <_Unwind_Resume>
    80003b54:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003b58:	000b8513          	mv	a0,s7
    80003b5c:	fffff097          	auipc	ra,0xfffff
    80003b60:	8b8080e7          	jalr	-1864(ra) # 80002414 <_ZdlPv>
    80003b64:	00048513          	mv	a0,s1
    80003b68:	00009097          	auipc	ra,0x9
    80003b6c:	ea0080e7          	jalr	-352(ra) # 8000ca08 <_Unwind_Resume>
    80003b70:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003b74:	00048513          	mv	a0,s1
    80003b78:	fffff097          	auipc	ra,0xfffff
    80003b7c:	89c080e7          	jalr	-1892(ra) # 80002414 <_ZdlPv>
    80003b80:	00090513          	mv	a0,s2
    80003b84:	00009097          	auipc	ra,0x9
    80003b88:	e84080e7          	jalr	-380(ra) # 8000ca08 <_Unwind_Resume>
    80003b8c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003b90:	000c8513          	mv	a0,s9
    80003b94:	fffff097          	auipc	ra,0xfffff
    80003b98:	880080e7          	jalr	-1920(ra) # 80002414 <_ZdlPv>
    80003b9c:	00048513          	mv	a0,s1
    80003ba0:	00009097          	auipc	ra,0x9
    80003ba4:	e68080e7          	jalr	-408(ra) # 8000ca08 <_Unwind_Resume>

0000000080003ba8 <_ZN8Consumer3runEv>:
    void run() override {
    80003ba8:	fd010113          	addi	sp,sp,-48
    80003bac:	02113423          	sd	ra,40(sp)
    80003bb0:	02813023          	sd	s0,32(sp)
    80003bb4:	00913c23          	sd	s1,24(sp)
    80003bb8:	01213823          	sd	s2,16(sp)
    80003bbc:	01313423          	sd	s3,8(sp)
    80003bc0:	03010413          	addi	s0,sp,48
    80003bc4:	00050913          	mv	s2,a0
        int i = 0;
    80003bc8:	00000993          	li	s3,0
    80003bcc:	0100006f          	j	80003bdc <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003bd0:	00a00513          	li	a0,10
    80003bd4:	fffff097          	auipc	ra,0xfffff
    80003bd8:	ac8080e7          	jalr	-1336(ra) # 8000269c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80003bdc:	00008797          	auipc	a5,0x8
    80003be0:	d247a783          	lw	a5,-732(a5) # 8000b900 <_ZL9threadEnd>
    80003be4:	04079a63          	bnez	a5,80003c38 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003be8:	02093783          	ld	a5,32(s2)
    80003bec:	0087b503          	ld	a0,8(a5)
    80003bf0:	00001097          	auipc	ra,0x1
    80003bf4:	638080e7          	jalr	1592(ra) # 80005228 <_ZN9BufferCPP3getEv>
            i++;
    80003bf8:	0019849b          	addiw	s1,s3,1
    80003bfc:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    80003c00:	0ff57513          	andi	a0,a0,255
    80003c04:	fffff097          	auipc	ra,0xfffff
    80003c08:	a98080e7          	jalr	-1384(ra) # 8000269c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80003c0c:	05000793          	li	a5,80
    80003c10:	02f4e4bb          	remw	s1,s1,a5
    80003c14:	fc0494e3          	bnez	s1,80003bdc <_ZN8Consumer3runEv+0x34>
    80003c18:	fb9ff06f          	j	80003bd0 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80003c1c:	02093783          	ld	a5,32(s2)
    80003c20:	0087b503          	ld	a0,8(a5)
    80003c24:	00001097          	auipc	ra,0x1
    80003c28:	604080e7          	jalr	1540(ra) # 80005228 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80003c2c:	0ff57513          	andi	a0,a0,255
    80003c30:	fffff097          	auipc	ra,0xfffff
    80003c34:	a6c080e7          	jalr	-1428(ra) # 8000269c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80003c38:	02093783          	ld	a5,32(s2)
    80003c3c:	0087b503          	ld	a0,8(a5)
    80003c40:	00001097          	auipc	ra,0x1
    80003c44:	674080e7          	jalr	1652(ra) # 800052b4 <_ZN9BufferCPP6getCntEv>
    80003c48:	fca04ae3          	bgtz	a0,80003c1c <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80003c4c:	02093783          	ld	a5,32(s2)
    80003c50:	0107b503          	ld	a0,16(a5)
    80003c54:	fffff097          	auipc	ra,0xfffff
    80003c58:	9f4080e7          	jalr	-1548(ra) # 80002648 <_ZN9Semaphore6signalEv>
    }
    80003c5c:	02813083          	ld	ra,40(sp)
    80003c60:	02013403          	ld	s0,32(sp)
    80003c64:	01813483          	ld	s1,24(sp)
    80003c68:	01013903          	ld	s2,16(sp)
    80003c6c:	00813983          	ld	s3,8(sp)
    80003c70:	03010113          	addi	sp,sp,48
    80003c74:	00008067          	ret

0000000080003c78 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003c78:	ff010113          	addi	sp,sp,-16
    80003c7c:	00113423          	sd	ra,8(sp)
    80003c80:	00813023          	sd	s0,0(sp)
    80003c84:	01010413          	addi	s0,sp,16
    80003c88:	00008797          	auipc	a5,0x8
    80003c8c:	ad878793          	addi	a5,a5,-1320 # 8000b760 <_ZTV8Consumer+0x10>
    80003c90:	00f53023          	sd	a5,0(a0)
    80003c94:	ffffe097          	auipc	ra,0xffffe
    80003c98:	7a8080e7          	jalr	1960(ra) # 8000243c <_ZN6ThreadD1Ev>
    80003c9c:	00813083          	ld	ra,8(sp)
    80003ca0:	00013403          	ld	s0,0(sp)
    80003ca4:	01010113          	addi	sp,sp,16
    80003ca8:	00008067          	ret

0000000080003cac <_ZN8ConsumerD0Ev>:
    80003cac:	fe010113          	addi	sp,sp,-32
    80003cb0:	00113c23          	sd	ra,24(sp)
    80003cb4:	00813823          	sd	s0,16(sp)
    80003cb8:	00913423          	sd	s1,8(sp)
    80003cbc:	02010413          	addi	s0,sp,32
    80003cc0:	00050493          	mv	s1,a0
    80003cc4:	00008797          	auipc	a5,0x8
    80003cc8:	a9c78793          	addi	a5,a5,-1380 # 8000b760 <_ZTV8Consumer+0x10>
    80003ccc:	00f53023          	sd	a5,0(a0)
    80003cd0:	ffffe097          	auipc	ra,0xffffe
    80003cd4:	76c080e7          	jalr	1900(ra) # 8000243c <_ZN6ThreadD1Ev>
    80003cd8:	00048513          	mv	a0,s1
    80003cdc:	ffffe097          	auipc	ra,0xffffe
    80003ce0:	738080e7          	jalr	1848(ra) # 80002414 <_ZdlPv>
    80003ce4:	01813083          	ld	ra,24(sp)
    80003ce8:	01013403          	ld	s0,16(sp)
    80003cec:	00813483          	ld	s1,8(sp)
    80003cf0:	02010113          	addi	sp,sp,32
    80003cf4:	00008067          	ret

0000000080003cf8 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003cf8:	ff010113          	addi	sp,sp,-16
    80003cfc:	00113423          	sd	ra,8(sp)
    80003d00:	00813023          	sd	s0,0(sp)
    80003d04:	01010413          	addi	s0,sp,16
    80003d08:	00008797          	auipc	a5,0x8
    80003d0c:	a0878793          	addi	a5,a5,-1528 # 8000b710 <_ZTV16ProducerKeyborad+0x10>
    80003d10:	00f53023          	sd	a5,0(a0)
    80003d14:	ffffe097          	auipc	ra,0xffffe
    80003d18:	728080e7          	jalr	1832(ra) # 8000243c <_ZN6ThreadD1Ev>
    80003d1c:	00813083          	ld	ra,8(sp)
    80003d20:	00013403          	ld	s0,0(sp)
    80003d24:	01010113          	addi	sp,sp,16
    80003d28:	00008067          	ret

0000000080003d2c <_ZN16ProducerKeyboradD0Ev>:
    80003d2c:	fe010113          	addi	sp,sp,-32
    80003d30:	00113c23          	sd	ra,24(sp)
    80003d34:	00813823          	sd	s0,16(sp)
    80003d38:	00913423          	sd	s1,8(sp)
    80003d3c:	02010413          	addi	s0,sp,32
    80003d40:	00050493          	mv	s1,a0
    80003d44:	00008797          	auipc	a5,0x8
    80003d48:	9cc78793          	addi	a5,a5,-1588 # 8000b710 <_ZTV16ProducerKeyborad+0x10>
    80003d4c:	00f53023          	sd	a5,0(a0)
    80003d50:	ffffe097          	auipc	ra,0xffffe
    80003d54:	6ec080e7          	jalr	1772(ra) # 8000243c <_ZN6ThreadD1Ev>
    80003d58:	00048513          	mv	a0,s1
    80003d5c:	ffffe097          	auipc	ra,0xffffe
    80003d60:	6b8080e7          	jalr	1720(ra) # 80002414 <_ZdlPv>
    80003d64:	01813083          	ld	ra,24(sp)
    80003d68:	01013403          	ld	s0,16(sp)
    80003d6c:	00813483          	ld	s1,8(sp)
    80003d70:	02010113          	addi	sp,sp,32
    80003d74:	00008067          	ret

0000000080003d78 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003d78:	ff010113          	addi	sp,sp,-16
    80003d7c:	00113423          	sd	ra,8(sp)
    80003d80:	00813023          	sd	s0,0(sp)
    80003d84:	01010413          	addi	s0,sp,16
    80003d88:	00008797          	auipc	a5,0x8
    80003d8c:	9b078793          	addi	a5,a5,-1616 # 8000b738 <_ZTV8Producer+0x10>
    80003d90:	00f53023          	sd	a5,0(a0)
    80003d94:	ffffe097          	auipc	ra,0xffffe
    80003d98:	6a8080e7          	jalr	1704(ra) # 8000243c <_ZN6ThreadD1Ev>
    80003d9c:	00813083          	ld	ra,8(sp)
    80003da0:	00013403          	ld	s0,0(sp)
    80003da4:	01010113          	addi	sp,sp,16
    80003da8:	00008067          	ret

0000000080003dac <_ZN8ProducerD0Ev>:
    80003dac:	fe010113          	addi	sp,sp,-32
    80003db0:	00113c23          	sd	ra,24(sp)
    80003db4:	00813823          	sd	s0,16(sp)
    80003db8:	00913423          	sd	s1,8(sp)
    80003dbc:	02010413          	addi	s0,sp,32
    80003dc0:	00050493          	mv	s1,a0
    80003dc4:	00008797          	auipc	a5,0x8
    80003dc8:	97478793          	addi	a5,a5,-1676 # 8000b738 <_ZTV8Producer+0x10>
    80003dcc:	00f53023          	sd	a5,0(a0)
    80003dd0:	ffffe097          	auipc	ra,0xffffe
    80003dd4:	66c080e7          	jalr	1644(ra) # 8000243c <_ZN6ThreadD1Ev>
    80003dd8:	00048513          	mv	a0,s1
    80003ddc:	ffffe097          	auipc	ra,0xffffe
    80003de0:	638080e7          	jalr	1592(ra) # 80002414 <_ZdlPv>
    80003de4:	01813083          	ld	ra,24(sp)
    80003de8:	01013403          	ld	s0,16(sp)
    80003dec:	00813483          	ld	s1,8(sp)
    80003df0:	02010113          	addi	sp,sp,32
    80003df4:	00008067          	ret

0000000080003df8 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003df8:	fe010113          	addi	sp,sp,-32
    80003dfc:	00113c23          	sd	ra,24(sp)
    80003e00:	00813823          	sd	s0,16(sp)
    80003e04:	00913423          	sd	s1,8(sp)
    80003e08:	02010413          	addi	s0,sp,32
    80003e0c:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    80003e10:	ffffd097          	auipc	ra,0xffffd
    80003e14:	6b8080e7          	jalr	1720(ra) # 800014c8 <_Z4getcv>
    80003e18:	0005059b          	sext.w	a1,a0
    80003e1c:	01b00793          	li	a5,27
    80003e20:	00f58c63          	beq	a1,a5,80003e38 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80003e24:	0204b783          	ld	a5,32(s1)
    80003e28:	0087b503          	ld	a0,8(a5)
    80003e2c:	00001097          	auipc	ra,0x1
    80003e30:	36c080e7          	jalr	876(ra) # 80005198 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80003e34:	fddff06f          	j	80003e10 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80003e38:	00100793          	li	a5,1
    80003e3c:	00008717          	auipc	a4,0x8
    80003e40:	acf72223          	sw	a5,-1340(a4) # 8000b900 <_ZL9threadEnd>
        td->buffer->put('!');
    80003e44:	0204b783          	ld	a5,32(s1)
    80003e48:	02100593          	li	a1,33
    80003e4c:	0087b503          	ld	a0,8(a5)
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	348080e7          	jalr	840(ra) # 80005198 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80003e58:	0204b783          	ld	a5,32(s1)
    80003e5c:	0107b503          	ld	a0,16(a5)
    80003e60:	ffffe097          	auipc	ra,0xffffe
    80003e64:	7e8080e7          	jalr	2024(ra) # 80002648 <_ZN9Semaphore6signalEv>
    }
    80003e68:	01813083          	ld	ra,24(sp)
    80003e6c:	01013403          	ld	s0,16(sp)
    80003e70:	00813483          	ld	s1,8(sp)
    80003e74:	02010113          	addi	sp,sp,32
    80003e78:	00008067          	ret

0000000080003e7c <_ZN8Producer3runEv>:
    void run() override {
    80003e7c:	fe010113          	addi	sp,sp,-32
    80003e80:	00113c23          	sd	ra,24(sp)
    80003e84:	00813823          	sd	s0,16(sp)
    80003e88:	00913423          	sd	s1,8(sp)
    80003e8c:	01213023          	sd	s2,0(sp)
    80003e90:	02010413          	addi	s0,sp,32
    80003e94:	00050493          	mv	s1,a0
        int i = 0;
    80003e98:	00000913          	li	s2,0
        while (!threadEnd) {
    80003e9c:	00008797          	auipc	a5,0x8
    80003ea0:	a647a783          	lw	a5,-1436(a5) # 8000b900 <_ZL9threadEnd>
    80003ea4:	04079263          	bnez	a5,80003ee8 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003ea8:	0204b783          	ld	a5,32(s1)
    80003eac:	0007a583          	lw	a1,0(a5)
    80003eb0:	0305859b          	addiw	a1,a1,48
    80003eb4:	0087b503          	ld	a0,8(a5)
    80003eb8:	00001097          	auipc	ra,0x1
    80003ebc:	2e0080e7          	jalr	736(ra) # 80005198 <_ZN9BufferCPP3putEi>
            i++;
    80003ec0:	0019071b          	addiw	a4,s2,1
    80003ec4:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003ec8:	0204b783          	ld	a5,32(s1)
    80003ecc:	0007a783          	lw	a5,0(a5)
    80003ed0:	00e787bb          	addw	a5,a5,a4
    80003ed4:	00500513          	li	a0,5
    80003ed8:	02a7e53b          	remw	a0,a5,a0
    80003edc:	ffffe097          	auipc	ra,0xffffe
    80003ee0:	6ec080e7          	jalr	1772(ra) # 800025c8 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003ee4:	fb9ff06f          	j	80003e9c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003ee8:	0204b783          	ld	a5,32(s1)
    80003eec:	0107b503          	ld	a0,16(a5)
    80003ef0:	ffffe097          	auipc	ra,0xffffe
    80003ef4:	758080e7          	jalr	1880(ra) # 80002648 <_ZN9Semaphore6signalEv>
    }
    80003ef8:	01813083          	ld	ra,24(sp)
    80003efc:	01013403          	ld	s0,16(sp)
    80003f00:	00813483          	ld	s1,8(sp)
    80003f04:	00013903          	ld	s2,0(sp)
    80003f08:	02010113          	addi	sp,sp,32
    80003f0c:	00008067          	ret

0000000080003f10 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003f10:	fe010113          	addi	sp,sp,-32
    80003f14:	00113c23          	sd	ra,24(sp)
    80003f18:	00813823          	sd	s0,16(sp)
    80003f1c:	00913423          	sd	s1,8(sp)
    80003f20:	01213023          	sd	s2,0(sp)
    80003f24:	02010413          	addi	s0,sp,32
    80003f28:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003f2c:	00100793          	li	a5,1
    80003f30:	02a7f863          	bgeu	a5,a0,80003f60 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003f34:	00a00793          	li	a5,10
    80003f38:	02f577b3          	remu	a5,a0,a5
    80003f3c:	02078e63          	beqz	a5,80003f78 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003f40:	fff48513          	addi	a0,s1,-1
    80003f44:	00000097          	auipc	ra,0x0
    80003f48:	fcc080e7          	jalr	-52(ra) # 80003f10 <_ZL9fibonaccim>
    80003f4c:	00050913          	mv	s2,a0
    80003f50:	ffe48513          	addi	a0,s1,-2
    80003f54:	00000097          	auipc	ra,0x0
    80003f58:	fbc080e7          	jalr	-68(ra) # 80003f10 <_ZL9fibonaccim>
    80003f5c:	00a90533          	add	a0,s2,a0
}
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	01013403          	ld	s0,16(sp)
    80003f68:	00813483          	ld	s1,8(sp)
    80003f6c:	00013903          	ld	s2,0(sp)
    80003f70:	02010113          	addi	sp,sp,32
    80003f74:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003f78:	ffffd097          	auipc	ra,0xffffd
    80003f7c:	414080e7          	jalr	1044(ra) # 8000138c <_Z15thread_dispatchv>
    80003f80:	fc1ff06f          	j	80003f40 <_ZL9fibonaccim+0x30>

0000000080003f84 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003f84:	fe010113          	addi	sp,sp,-32
    80003f88:	00113c23          	sd	ra,24(sp)
    80003f8c:	00813823          	sd	s0,16(sp)
    80003f90:	00913423          	sd	s1,8(sp)
    80003f94:	01213023          	sd	s2,0(sp)
    80003f98:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003f9c:	00a00493          	li	s1,10
    80003fa0:	0400006f          	j	80003fe0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003fa4:	00005517          	auipc	a0,0x5
    80003fa8:	53450513          	addi	a0,a0,1332 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80003fac:	00001097          	auipc	ra,0x1
    80003fb0:	dc8080e7          	jalr	-568(ra) # 80004d74 <_Z11printStringPKc>
    80003fb4:	00000613          	li	a2,0
    80003fb8:	00a00593          	li	a1,10
    80003fbc:	00048513          	mv	a0,s1
    80003fc0:	00001097          	auipc	ra,0x1
    80003fc4:	f64080e7          	jalr	-156(ra) # 80004f24 <_Z8printIntiii>
    80003fc8:	00005517          	auipc	a0,0x5
    80003fcc:	1c850513          	addi	a0,a0,456 # 80009190 <CONSOLE_STATUS+0x180>
    80003fd0:	00001097          	auipc	ra,0x1
    80003fd4:	da4080e7          	jalr	-604(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003fd8:	0014849b          	addiw	s1,s1,1
    80003fdc:	0ff4f493          	andi	s1,s1,255
    80003fe0:	00c00793          	li	a5,12
    80003fe4:	fc97f0e3          	bgeu	a5,s1,80003fa4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003fe8:	00005517          	auipc	a0,0x5
    80003fec:	4f850513          	addi	a0,a0,1272 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80003ff0:	00001097          	auipc	ra,0x1
    80003ff4:	d84080e7          	jalr	-636(ra) # 80004d74 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003ff8:	00500313          	li	t1,5
    thread_dispatch();
    80003ffc:	ffffd097          	auipc	ra,0xffffd
    80004000:	390080e7          	jalr	912(ra) # 8000138c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004004:	01000513          	li	a0,16
    80004008:	00000097          	auipc	ra,0x0
    8000400c:	f08080e7          	jalr	-248(ra) # 80003f10 <_ZL9fibonaccim>
    80004010:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004014:	00005517          	auipc	a0,0x5
    80004018:	4dc50513          	addi	a0,a0,1244 # 800094f0 <CONSOLE_STATUS+0x4e0>
    8000401c:	00001097          	auipc	ra,0x1
    80004020:	d58080e7          	jalr	-680(ra) # 80004d74 <_Z11printStringPKc>
    80004024:	00000613          	li	a2,0
    80004028:	00a00593          	li	a1,10
    8000402c:	0009051b          	sext.w	a0,s2
    80004030:	00001097          	auipc	ra,0x1
    80004034:	ef4080e7          	jalr	-268(ra) # 80004f24 <_Z8printIntiii>
    80004038:	00005517          	auipc	a0,0x5
    8000403c:	15850513          	addi	a0,a0,344 # 80009190 <CONSOLE_STATUS+0x180>
    80004040:	00001097          	auipc	ra,0x1
    80004044:	d34080e7          	jalr	-716(ra) # 80004d74 <_Z11printStringPKc>
    80004048:	0400006f          	j	80004088 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000404c:	00005517          	auipc	a0,0x5
    80004050:	48c50513          	addi	a0,a0,1164 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80004054:	00001097          	auipc	ra,0x1
    80004058:	d20080e7          	jalr	-736(ra) # 80004d74 <_Z11printStringPKc>
    8000405c:	00000613          	li	a2,0
    80004060:	00a00593          	li	a1,10
    80004064:	00048513          	mv	a0,s1
    80004068:	00001097          	auipc	ra,0x1
    8000406c:	ebc080e7          	jalr	-324(ra) # 80004f24 <_Z8printIntiii>
    80004070:	00005517          	auipc	a0,0x5
    80004074:	12050513          	addi	a0,a0,288 # 80009190 <CONSOLE_STATUS+0x180>
    80004078:	00001097          	auipc	ra,0x1
    8000407c:	cfc080e7          	jalr	-772(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004080:	0014849b          	addiw	s1,s1,1
    80004084:	0ff4f493          	andi	s1,s1,255
    80004088:	00f00793          	li	a5,15
    8000408c:	fc97f0e3          	bgeu	a5,s1,8000404c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004090:	00005517          	auipc	a0,0x5
    80004094:	47050513          	addi	a0,a0,1136 # 80009500 <CONSOLE_STATUS+0x4f0>
    80004098:	00001097          	auipc	ra,0x1
    8000409c:	cdc080e7          	jalr	-804(ra) # 80004d74 <_Z11printStringPKc>
    finishedD = true;
    800040a0:	00100793          	li	a5,1
    800040a4:	00008717          	auipc	a4,0x8
    800040a8:	86f70623          	sb	a5,-1940(a4) # 8000b910 <_ZL9finishedD>
    thread_dispatch();
    800040ac:	ffffd097          	auipc	ra,0xffffd
    800040b0:	2e0080e7          	jalr	736(ra) # 8000138c <_Z15thread_dispatchv>
}
    800040b4:	01813083          	ld	ra,24(sp)
    800040b8:	01013403          	ld	s0,16(sp)
    800040bc:	00813483          	ld	s1,8(sp)
    800040c0:	00013903          	ld	s2,0(sp)
    800040c4:	02010113          	addi	sp,sp,32
    800040c8:	00008067          	ret

00000000800040cc <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800040cc:	fe010113          	addi	sp,sp,-32
    800040d0:	00113c23          	sd	ra,24(sp)
    800040d4:	00813823          	sd	s0,16(sp)
    800040d8:	00913423          	sd	s1,8(sp)
    800040dc:	01213023          	sd	s2,0(sp)
    800040e0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800040e4:	00000493          	li	s1,0
    800040e8:	0400006f          	j	80004128 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800040ec:	00005517          	auipc	a0,0x5
    800040f0:	3bc50513          	addi	a0,a0,956 # 800094a8 <CONSOLE_STATUS+0x498>
    800040f4:	00001097          	auipc	ra,0x1
    800040f8:	c80080e7          	jalr	-896(ra) # 80004d74 <_Z11printStringPKc>
    800040fc:	00000613          	li	a2,0
    80004100:	00a00593          	li	a1,10
    80004104:	00048513          	mv	a0,s1
    80004108:	00001097          	auipc	ra,0x1
    8000410c:	e1c080e7          	jalr	-484(ra) # 80004f24 <_Z8printIntiii>
    80004110:	00005517          	auipc	a0,0x5
    80004114:	08050513          	addi	a0,a0,128 # 80009190 <CONSOLE_STATUS+0x180>
    80004118:	00001097          	auipc	ra,0x1
    8000411c:	c5c080e7          	jalr	-932(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004120:	0014849b          	addiw	s1,s1,1
    80004124:	0ff4f493          	andi	s1,s1,255
    80004128:	00200793          	li	a5,2
    8000412c:	fc97f0e3          	bgeu	a5,s1,800040ec <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004130:	00005517          	auipc	a0,0x5
    80004134:	38050513          	addi	a0,a0,896 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80004138:	00001097          	auipc	ra,0x1
    8000413c:	c3c080e7          	jalr	-964(ra) # 80004d74 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004140:	00700313          	li	t1,7
    thread_dispatch();
    80004144:	ffffd097          	auipc	ra,0xffffd
    80004148:	248080e7          	jalr	584(ra) # 8000138c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000414c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004150:	00005517          	auipc	a0,0x5
    80004154:	37050513          	addi	a0,a0,880 # 800094c0 <CONSOLE_STATUS+0x4b0>
    80004158:	00001097          	auipc	ra,0x1
    8000415c:	c1c080e7          	jalr	-996(ra) # 80004d74 <_Z11printStringPKc>
    80004160:	00000613          	li	a2,0
    80004164:	00a00593          	li	a1,10
    80004168:	0009051b          	sext.w	a0,s2
    8000416c:	00001097          	auipc	ra,0x1
    80004170:	db8080e7          	jalr	-584(ra) # 80004f24 <_Z8printIntiii>
    80004174:	00005517          	auipc	a0,0x5
    80004178:	01c50513          	addi	a0,a0,28 # 80009190 <CONSOLE_STATUS+0x180>
    8000417c:	00001097          	auipc	ra,0x1
    80004180:	bf8080e7          	jalr	-1032(ra) # 80004d74 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004184:	00c00513          	li	a0,12
    80004188:	00000097          	auipc	ra,0x0
    8000418c:	d88080e7          	jalr	-632(ra) # 80003f10 <_ZL9fibonaccim>
    80004190:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004194:	00005517          	auipc	a0,0x5
    80004198:	33450513          	addi	a0,a0,820 # 800094c8 <CONSOLE_STATUS+0x4b8>
    8000419c:	00001097          	auipc	ra,0x1
    800041a0:	bd8080e7          	jalr	-1064(ra) # 80004d74 <_Z11printStringPKc>
    800041a4:	00000613          	li	a2,0
    800041a8:	00a00593          	li	a1,10
    800041ac:	0009051b          	sext.w	a0,s2
    800041b0:	00001097          	auipc	ra,0x1
    800041b4:	d74080e7          	jalr	-652(ra) # 80004f24 <_Z8printIntiii>
    800041b8:	00005517          	auipc	a0,0x5
    800041bc:	fd850513          	addi	a0,a0,-40 # 80009190 <CONSOLE_STATUS+0x180>
    800041c0:	00001097          	auipc	ra,0x1
    800041c4:	bb4080e7          	jalr	-1100(ra) # 80004d74 <_Z11printStringPKc>
    800041c8:	0400006f          	j	80004208 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800041cc:	00005517          	auipc	a0,0x5
    800041d0:	2dc50513          	addi	a0,a0,732 # 800094a8 <CONSOLE_STATUS+0x498>
    800041d4:	00001097          	auipc	ra,0x1
    800041d8:	ba0080e7          	jalr	-1120(ra) # 80004d74 <_Z11printStringPKc>
    800041dc:	00000613          	li	a2,0
    800041e0:	00a00593          	li	a1,10
    800041e4:	00048513          	mv	a0,s1
    800041e8:	00001097          	auipc	ra,0x1
    800041ec:	d3c080e7          	jalr	-708(ra) # 80004f24 <_Z8printIntiii>
    800041f0:	00005517          	auipc	a0,0x5
    800041f4:	fa050513          	addi	a0,a0,-96 # 80009190 <CONSOLE_STATUS+0x180>
    800041f8:	00001097          	auipc	ra,0x1
    800041fc:	b7c080e7          	jalr	-1156(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004200:	0014849b          	addiw	s1,s1,1
    80004204:	0ff4f493          	andi	s1,s1,255
    80004208:	00500793          	li	a5,5
    8000420c:	fc97f0e3          	bgeu	a5,s1,800041cc <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004210:	00005517          	auipc	a0,0x5
    80004214:	27050513          	addi	a0,a0,624 # 80009480 <CONSOLE_STATUS+0x470>
    80004218:	00001097          	auipc	ra,0x1
    8000421c:	b5c080e7          	jalr	-1188(ra) # 80004d74 <_Z11printStringPKc>
    finishedC = true;
    80004220:	00100793          	li	a5,1
    80004224:	00007717          	auipc	a4,0x7
    80004228:	6ef706a3          	sb	a5,1773(a4) # 8000b911 <_ZL9finishedC>
    thread_dispatch();
    8000422c:	ffffd097          	auipc	ra,0xffffd
    80004230:	160080e7          	jalr	352(ra) # 8000138c <_Z15thread_dispatchv>
}
    80004234:	01813083          	ld	ra,24(sp)
    80004238:	01013403          	ld	s0,16(sp)
    8000423c:	00813483          	ld	s1,8(sp)
    80004240:	00013903          	ld	s2,0(sp)
    80004244:	02010113          	addi	sp,sp,32
    80004248:	00008067          	ret

000000008000424c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000424c:	fe010113          	addi	sp,sp,-32
    80004250:	00113c23          	sd	ra,24(sp)
    80004254:	00813823          	sd	s0,16(sp)
    80004258:	00913423          	sd	s1,8(sp)
    8000425c:	01213023          	sd	s2,0(sp)
    80004260:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004264:	00000913          	li	s2,0
    80004268:	0380006f          	j	800042a0 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    8000426c:	ffffd097          	auipc	ra,0xffffd
    80004270:	120080e7          	jalr	288(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004274:	00148493          	addi	s1,s1,1
    80004278:	000027b7          	lui	a5,0x2
    8000427c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004280:	0097ee63          	bltu	a5,s1,8000429c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004284:	00000713          	li	a4,0
    80004288:	000077b7          	lui	a5,0x7
    8000428c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004290:	fce7eee3          	bltu	a5,a4,8000426c <_ZL11workerBodyBPv+0x20>
    80004294:	00170713          	addi	a4,a4,1
    80004298:	ff1ff06f          	j	80004288 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000429c:	00190913          	addi	s2,s2,1
    800042a0:	00f00793          	li	a5,15
    800042a4:	0527e063          	bltu	a5,s2,800042e4 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800042a8:	00005517          	auipc	a0,0x5
    800042ac:	1e850513          	addi	a0,a0,488 # 80009490 <CONSOLE_STATUS+0x480>
    800042b0:	00001097          	auipc	ra,0x1
    800042b4:	ac4080e7          	jalr	-1340(ra) # 80004d74 <_Z11printStringPKc>
    800042b8:	00000613          	li	a2,0
    800042bc:	00a00593          	li	a1,10
    800042c0:	0009051b          	sext.w	a0,s2
    800042c4:	00001097          	auipc	ra,0x1
    800042c8:	c60080e7          	jalr	-928(ra) # 80004f24 <_Z8printIntiii>
    800042cc:	00005517          	auipc	a0,0x5
    800042d0:	ec450513          	addi	a0,a0,-316 # 80009190 <CONSOLE_STATUS+0x180>
    800042d4:	00001097          	auipc	ra,0x1
    800042d8:	aa0080e7          	jalr	-1376(ra) # 80004d74 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800042dc:	00000493          	li	s1,0
    800042e0:	f99ff06f          	j	80004278 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800042e4:	00005517          	auipc	a0,0x5
    800042e8:	1b450513          	addi	a0,a0,436 # 80009498 <CONSOLE_STATUS+0x488>
    800042ec:	00001097          	auipc	ra,0x1
    800042f0:	a88080e7          	jalr	-1400(ra) # 80004d74 <_Z11printStringPKc>
    finishedB = true;
    800042f4:	00100793          	li	a5,1
    800042f8:	00007717          	auipc	a4,0x7
    800042fc:	60f70d23          	sb	a5,1562(a4) # 8000b912 <_ZL9finishedB>
    thread_dispatch();
    80004300:	ffffd097          	auipc	ra,0xffffd
    80004304:	08c080e7          	jalr	140(ra) # 8000138c <_Z15thread_dispatchv>
}
    80004308:	01813083          	ld	ra,24(sp)
    8000430c:	01013403          	ld	s0,16(sp)
    80004310:	00813483          	ld	s1,8(sp)
    80004314:	00013903          	ld	s2,0(sp)
    80004318:	02010113          	addi	sp,sp,32
    8000431c:	00008067          	ret

0000000080004320 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004320:	fe010113          	addi	sp,sp,-32
    80004324:	00113c23          	sd	ra,24(sp)
    80004328:	00813823          	sd	s0,16(sp)
    8000432c:	00913423          	sd	s1,8(sp)
    80004330:	01213023          	sd	s2,0(sp)
    80004334:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004338:	00000913          	li	s2,0
    8000433c:	0380006f          	j	80004374 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004340:	ffffd097          	auipc	ra,0xffffd
    80004344:	04c080e7          	jalr	76(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004348:	00148493          	addi	s1,s1,1
    8000434c:	000027b7          	lui	a5,0x2
    80004350:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004354:	0097ee63          	bltu	a5,s1,80004370 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004358:	00000713          	li	a4,0
    8000435c:	000077b7          	lui	a5,0x7
    80004360:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004364:	fce7eee3          	bltu	a5,a4,80004340 <_ZL11workerBodyAPv+0x20>
    80004368:	00170713          	addi	a4,a4,1
    8000436c:	ff1ff06f          	j	8000435c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004370:	00190913          	addi	s2,s2,1
    80004374:	00900793          	li	a5,9
    80004378:	0527e063          	bltu	a5,s2,800043b8 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000437c:	00005517          	auipc	a0,0x5
    80004380:	0fc50513          	addi	a0,a0,252 # 80009478 <CONSOLE_STATUS+0x468>
    80004384:	00001097          	auipc	ra,0x1
    80004388:	9f0080e7          	jalr	-1552(ra) # 80004d74 <_Z11printStringPKc>
    8000438c:	00000613          	li	a2,0
    80004390:	00a00593          	li	a1,10
    80004394:	0009051b          	sext.w	a0,s2
    80004398:	00001097          	auipc	ra,0x1
    8000439c:	b8c080e7          	jalr	-1140(ra) # 80004f24 <_Z8printIntiii>
    800043a0:	00005517          	auipc	a0,0x5
    800043a4:	df050513          	addi	a0,a0,-528 # 80009190 <CONSOLE_STATUS+0x180>
    800043a8:	00001097          	auipc	ra,0x1
    800043ac:	9cc080e7          	jalr	-1588(ra) # 80004d74 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800043b0:	00000493          	li	s1,0
    800043b4:	f99ff06f          	j	8000434c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800043b8:	00005517          	auipc	a0,0x5
    800043bc:	0c850513          	addi	a0,a0,200 # 80009480 <CONSOLE_STATUS+0x470>
    800043c0:	00001097          	auipc	ra,0x1
    800043c4:	9b4080e7          	jalr	-1612(ra) # 80004d74 <_Z11printStringPKc>
    finishedA = true;
    800043c8:	00100793          	li	a5,1
    800043cc:	00007717          	auipc	a4,0x7
    800043d0:	54f703a3          	sb	a5,1351(a4) # 8000b913 <_ZL9finishedA>
}
    800043d4:	01813083          	ld	ra,24(sp)
    800043d8:	01013403          	ld	s0,16(sp)
    800043dc:	00813483          	ld	s1,8(sp)
    800043e0:	00013903          	ld	s2,0(sp)
    800043e4:	02010113          	addi	sp,sp,32
    800043e8:	00008067          	ret

00000000800043ec <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800043ec:	fd010113          	addi	sp,sp,-48
    800043f0:	02113423          	sd	ra,40(sp)
    800043f4:	02813023          	sd	s0,32(sp)
    800043f8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800043fc:	00000613          	li	a2,0
    80004400:	00000597          	auipc	a1,0x0
    80004404:	f2058593          	addi	a1,a1,-224 # 80004320 <_ZL11workerBodyAPv>
    80004408:	fd040513          	addi	a0,s0,-48
    8000440c:	ffffd097          	auipc	ra,0xffffd
    80004410:	eb4080e7          	jalr	-332(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadA created\n");
    80004414:	00005517          	auipc	a0,0x5
    80004418:	0fc50513          	addi	a0,a0,252 # 80009510 <CONSOLE_STATUS+0x500>
    8000441c:	00001097          	auipc	ra,0x1
    80004420:	958080e7          	jalr	-1704(ra) # 80004d74 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004424:	00000613          	li	a2,0
    80004428:	00000597          	auipc	a1,0x0
    8000442c:	e2458593          	addi	a1,a1,-476 # 8000424c <_ZL11workerBodyBPv>
    80004430:	fd840513          	addi	a0,s0,-40
    80004434:	ffffd097          	auipc	ra,0xffffd
    80004438:	e8c080e7          	jalr	-372(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadB created\n");
    8000443c:	00005517          	auipc	a0,0x5
    80004440:	0ec50513          	addi	a0,a0,236 # 80009528 <CONSOLE_STATUS+0x518>
    80004444:	00001097          	auipc	ra,0x1
    80004448:	930080e7          	jalr	-1744(ra) # 80004d74 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000444c:	00000613          	li	a2,0
    80004450:	00000597          	auipc	a1,0x0
    80004454:	c7c58593          	addi	a1,a1,-900 # 800040cc <_ZL11workerBodyCPv>
    80004458:	fe040513          	addi	a0,s0,-32
    8000445c:	ffffd097          	auipc	ra,0xffffd
    80004460:	e64080e7          	jalr	-412(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadC created\n");
    80004464:	00005517          	auipc	a0,0x5
    80004468:	0dc50513          	addi	a0,a0,220 # 80009540 <CONSOLE_STATUS+0x530>
    8000446c:	00001097          	auipc	ra,0x1
    80004470:	908080e7          	jalr	-1784(ra) # 80004d74 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004474:	00000613          	li	a2,0
    80004478:	00000597          	auipc	a1,0x0
    8000447c:	b0c58593          	addi	a1,a1,-1268 # 80003f84 <_ZL11workerBodyDPv>
    80004480:	fe840513          	addi	a0,s0,-24
    80004484:	ffffd097          	auipc	ra,0xffffd
    80004488:	e3c080e7          	jalr	-452(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadD created\n");
    8000448c:	00005517          	auipc	a0,0x5
    80004490:	0cc50513          	addi	a0,a0,204 # 80009558 <CONSOLE_STATUS+0x548>
    80004494:	00001097          	auipc	ra,0x1
    80004498:	8e0080e7          	jalr	-1824(ra) # 80004d74 <_Z11printStringPKc>
    8000449c:	00c0006f          	j	800044a8 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800044a0:	ffffd097          	auipc	ra,0xffffd
    800044a4:	eec080e7          	jalr	-276(ra) # 8000138c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800044a8:	00007797          	auipc	a5,0x7
    800044ac:	46b7c783          	lbu	a5,1131(a5) # 8000b913 <_ZL9finishedA>
    800044b0:	fe0788e3          	beqz	a5,800044a0 <_Z18Threads_C_API_testv+0xb4>
    800044b4:	00007797          	auipc	a5,0x7
    800044b8:	45e7c783          	lbu	a5,1118(a5) # 8000b912 <_ZL9finishedB>
    800044bc:	fe0782e3          	beqz	a5,800044a0 <_Z18Threads_C_API_testv+0xb4>
    800044c0:	00007797          	auipc	a5,0x7
    800044c4:	4517c783          	lbu	a5,1105(a5) # 8000b911 <_ZL9finishedC>
    800044c8:	fc078ce3          	beqz	a5,800044a0 <_Z18Threads_C_API_testv+0xb4>
    800044cc:	00007797          	auipc	a5,0x7
    800044d0:	4447c783          	lbu	a5,1092(a5) # 8000b910 <_ZL9finishedD>
    800044d4:	fc0786e3          	beqz	a5,800044a0 <_Z18Threads_C_API_testv+0xb4>
    }

}
    800044d8:	02813083          	ld	ra,40(sp)
    800044dc:	02013403          	ld	s0,32(sp)
    800044e0:	03010113          	addi	sp,sp,48
    800044e4:	00008067          	ret

00000000800044e8 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800044e8:	fd010113          	addi	sp,sp,-48
    800044ec:	02113423          	sd	ra,40(sp)
    800044f0:	02813023          	sd	s0,32(sp)
    800044f4:	00913c23          	sd	s1,24(sp)
    800044f8:	01213823          	sd	s2,16(sp)
    800044fc:	01313423          	sd	s3,8(sp)
    80004500:	03010413          	addi	s0,sp,48
    80004504:	00050993          	mv	s3,a0
    80004508:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000450c:	00000913          	li	s2,0
    80004510:	00c0006f          	j	8000451c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004514:	ffffe097          	auipc	ra,0xffffe
    80004518:	08c080e7          	jalr	140(ra) # 800025a0 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    8000451c:	ffffd097          	auipc	ra,0xffffd
    80004520:	fac080e7          	jalr	-84(ra) # 800014c8 <_Z4getcv>
    80004524:	0005059b          	sext.w	a1,a0
    80004528:	01b00793          	li	a5,27
    8000452c:	02f58a63          	beq	a1,a5,80004560 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004530:	0084b503          	ld	a0,8(s1)
    80004534:	00001097          	auipc	ra,0x1
    80004538:	c64080e7          	jalr	-924(ra) # 80005198 <_ZN9BufferCPP3putEi>
        i++;
    8000453c:	0019071b          	addiw	a4,s2,1
    80004540:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004544:	0004a683          	lw	a3,0(s1)
    80004548:	0026979b          	slliw	a5,a3,0x2
    8000454c:	00d787bb          	addw	a5,a5,a3
    80004550:	0017979b          	slliw	a5,a5,0x1
    80004554:	02f767bb          	remw	a5,a4,a5
    80004558:	fc0792e3          	bnez	a5,8000451c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    8000455c:	fb9ff06f          	j	80004514 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004560:	00100793          	li	a5,1
    80004564:	00007717          	auipc	a4,0x7
    80004568:	3af72a23          	sw	a5,948(a4) # 8000b918 <_ZL9threadEnd>
    td->buffer->put('!');
    8000456c:	0209b783          	ld	a5,32(s3)
    80004570:	02100593          	li	a1,33
    80004574:	0087b503          	ld	a0,8(a5)
    80004578:	00001097          	auipc	ra,0x1
    8000457c:	c20080e7          	jalr	-992(ra) # 80005198 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004580:	0104b503          	ld	a0,16(s1)
    80004584:	ffffe097          	auipc	ra,0xffffe
    80004588:	0c4080e7          	jalr	196(ra) # 80002648 <_ZN9Semaphore6signalEv>
}
    8000458c:	02813083          	ld	ra,40(sp)
    80004590:	02013403          	ld	s0,32(sp)
    80004594:	01813483          	ld	s1,24(sp)
    80004598:	01013903          	ld	s2,16(sp)
    8000459c:	00813983          	ld	s3,8(sp)
    800045a0:	03010113          	addi	sp,sp,48
    800045a4:	00008067          	ret

00000000800045a8 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800045a8:	fe010113          	addi	sp,sp,-32
    800045ac:	00113c23          	sd	ra,24(sp)
    800045b0:	00813823          	sd	s0,16(sp)
    800045b4:	00913423          	sd	s1,8(sp)
    800045b8:	01213023          	sd	s2,0(sp)
    800045bc:	02010413          	addi	s0,sp,32
    800045c0:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800045c4:	00000913          	li	s2,0
    800045c8:	00c0006f          	j	800045d4 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800045cc:	ffffe097          	auipc	ra,0xffffe
    800045d0:	fd4080e7          	jalr	-44(ra) # 800025a0 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800045d4:	00007797          	auipc	a5,0x7
    800045d8:	3447a783          	lw	a5,836(a5) # 8000b918 <_ZL9threadEnd>
    800045dc:	02079e63          	bnez	a5,80004618 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800045e0:	0004a583          	lw	a1,0(s1)
    800045e4:	0305859b          	addiw	a1,a1,48
    800045e8:	0084b503          	ld	a0,8(s1)
    800045ec:	00001097          	auipc	ra,0x1
    800045f0:	bac080e7          	jalr	-1108(ra) # 80005198 <_ZN9BufferCPP3putEi>
        i++;
    800045f4:	0019071b          	addiw	a4,s2,1
    800045f8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800045fc:	0004a683          	lw	a3,0(s1)
    80004600:	0026979b          	slliw	a5,a3,0x2
    80004604:	00d787bb          	addw	a5,a5,a3
    80004608:	0017979b          	slliw	a5,a5,0x1
    8000460c:	02f767bb          	remw	a5,a4,a5
    80004610:	fc0792e3          	bnez	a5,800045d4 <_ZN12ProducerSync8producerEPv+0x2c>
    80004614:	fb9ff06f          	j	800045cc <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004618:	0104b503          	ld	a0,16(s1)
    8000461c:	ffffe097          	auipc	ra,0xffffe
    80004620:	02c080e7          	jalr	44(ra) # 80002648 <_ZN9Semaphore6signalEv>
}
    80004624:	01813083          	ld	ra,24(sp)
    80004628:	01013403          	ld	s0,16(sp)
    8000462c:	00813483          	ld	s1,8(sp)
    80004630:	00013903          	ld	s2,0(sp)
    80004634:	02010113          	addi	sp,sp,32
    80004638:	00008067          	ret

000000008000463c <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    8000463c:	fd010113          	addi	sp,sp,-48
    80004640:	02113423          	sd	ra,40(sp)
    80004644:	02813023          	sd	s0,32(sp)
    80004648:	00913c23          	sd	s1,24(sp)
    8000464c:	01213823          	sd	s2,16(sp)
    80004650:	01313423          	sd	s3,8(sp)
    80004654:	01413023          	sd	s4,0(sp)
    80004658:	03010413          	addi	s0,sp,48
    8000465c:	00050993          	mv	s3,a0
    80004660:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004664:	00000a13          	li	s4,0
    80004668:	01c0006f          	j	80004684 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000466c:	ffffe097          	auipc	ra,0xffffe
    80004670:	f34080e7          	jalr	-204(ra) # 800025a0 <_ZN6Thread8dispatchEv>
    80004674:	0500006f          	j	800046c4 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004678:	00a00513          	li	a0,10
    8000467c:	ffffd097          	auipc	ra,0xffffd
    80004680:	e8c080e7          	jalr	-372(ra) # 80001508 <_Z4putcc>
    while (!threadEnd) {
    80004684:	00007797          	auipc	a5,0x7
    80004688:	2947a783          	lw	a5,660(a5) # 8000b918 <_ZL9threadEnd>
    8000468c:	06079263          	bnez	a5,800046f0 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004690:	00893503          	ld	a0,8(s2)
    80004694:	00001097          	auipc	ra,0x1
    80004698:	b94080e7          	jalr	-1132(ra) # 80005228 <_ZN9BufferCPP3getEv>
        i++;
    8000469c:	001a049b          	addiw	s1,s4,1
    800046a0:	00048a1b          	sext.w	s4,s1
        putc(key);
    800046a4:	0ff57513          	andi	a0,a0,255
    800046a8:	ffffd097          	auipc	ra,0xffffd
    800046ac:	e60080e7          	jalr	-416(ra) # 80001508 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800046b0:	00092703          	lw	a4,0(s2)
    800046b4:	0027179b          	slliw	a5,a4,0x2
    800046b8:	00e787bb          	addw	a5,a5,a4
    800046bc:	02f4e7bb          	remw	a5,s1,a5
    800046c0:	fa0786e3          	beqz	a5,8000466c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    800046c4:	05000793          	li	a5,80
    800046c8:	02f4e4bb          	remw	s1,s1,a5
    800046cc:	fa049ce3          	bnez	s1,80004684 <_ZN12ConsumerSync8consumerEPv+0x48>
    800046d0:	fa9ff06f          	j	80004678 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800046d4:	0209b783          	ld	a5,32(s3)
    800046d8:	0087b503          	ld	a0,8(a5)
    800046dc:	00001097          	auipc	ra,0x1
    800046e0:	b4c080e7          	jalr	-1204(ra) # 80005228 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800046e4:	0ff57513          	andi	a0,a0,255
    800046e8:	ffffe097          	auipc	ra,0xffffe
    800046ec:	fb4080e7          	jalr	-76(ra) # 8000269c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800046f0:	0209b783          	ld	a5,32(s3)
    800046f4:	0087b503          	ld	a0,8(a5)
    800046f8:	00001097          	auipc	ra,0x1
    800046fc:	bbc080e7          	jalr	-1092(ra) # 800052b4 <_ZN9BufferCPP6getCntEv>
    80004700:	fca04ae3          	bgtz	a0,800046d4 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004704:	01093503          	ld	a0,16(s2)
    80004708:	ffffe097          	auipc	ra,0xffffe
    8000470c:	f40080e7          	jalr	-192(ra) # 80002648 <_ZN9Semaphore6signalEv>
}
    80004710:	02813083          	ld	ra,40(sp)
    80004714:	02013403          	ld	s0,32(sp)
    80004718:	01813483          	ld	s1,24(sp)
    8000471c:	01013903          	ld	s2,16(sp)
    80004720:	00813983          	ld	s3,8(sp)
    80004724:	00013a03          	ld	s4,0(sp)
    80004728:	03010113          	addi	sp,sp,48
    8000472c:	00008067          	ret

0000000080004730 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004730:	f8010113          	addi	sp,sp,-128
    80004734:	06113c23          	sd	ra,120(sp)
    80004738:	06813823          	sd	s0,112(sp)
    8000473c:	06913423          	sd	s1,104(sp)
    80004740:	07213023          	sd	s2,96(sp)
    80004744:	05313c23          	sd	s3,88(sp)
    80004748:	05413823          	sd	s4,80(sp)
    8000474c:	05513423          	sd	s5,72(sp)
    80004750:	05613023          	sd	s6,64(sp)
    80004754:	03713c23          	sd	s7,56(sp)
    80004758:	03813823          	sd	s8,48(sp)
    8000475c:	03913423          	sd	s9,40(sp)
    80004760:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004764:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004768:	00005517          	auipc	a0,0x5
    8000476c:	c2850513          	addi	a0,a0,-984 # 80009390 <CONSOLE_STATUS+0x380>
    80004770:	00000097          	auipc	ra,0x0
    80004774:	604080e7          	jalr	1540(ra) # 80004d74 <_Z11printStringPKc>
    getString(input, 30);
    80004778:	01e00593          	li	a1,30
    8000477c:	f8040493          	addi	s1,s0,-128
    80004780:	00048513          	mv	a0,s1
    80004784:	00000097          	auipc	ra,0x0
    80004788:	678080e7          	jalr	1656(ra) # 80004dfc <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000478c:	00048513          	mv	a0,s1
    80004790:	00000097          	auipc	ra,0x0
    80004794:	744080e7          	jalr	1860(ra) # 80004ed4 <_Z11stringToIntPKc>
    80004798:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000479c:	00005517          	auipc	a0,0x5
    800047a0:	c1450513          	addi	a0,a0,-1004 # 800093b0 <CONSOLE_STATUS+0x3a0>
    800047a4:	00000097          	auipc	ra,0x0
    800047a8:	5d0080e7          	jalr	1488(ra) # 80004d74 <_Z11printStringPKc>
    getString(input, 30);
    800047ac:	01e00593          	li	a1,30
    800047b0:	00048513          	mv	a0,s1
    800047b4:	00000097          	auipc	ra,0x0
    800047b8:	648080e7          	jalr	1608(ra) # 80004dfc <_Z9getStringPci>
    n = stringToInt(input);
    800047bc:	00048513          	mv	a0,s1
    800047c0:	00000097          	auipc	ra,0x0
    800047c4:	714080e7          	jalr	1812(ra) # 80004ed4 <_Z11stringToIntPKc>
    800047c8:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800047cc:	00005517          	auipc	a0,0x5
    800047d0:	c0450513          	addi	a0,a0,-1020 # 800093d0 <CONSOLE_STATUS+0x3c0>
    800047d4:	00000097          	auipc	ra,0x0
    800047d8:	5a0080e7          	jalr	1440(ra) # 80004d74 <_Z11printStringPKc>
    800047dc:	00000613          	li	a2,0
    800047e0:	00a00593          	li	a1,10
    800047e4:	00090513          	mv	a0,s2
    800047e8:	00000097          	auipc	ra,0x0
    800047ec:	73c080e7          	jalr	1852(ra) # 80004f24 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800047f0:	00005517          	auipc	a0,0x5
    800047f4:	bf850513          	addi	a0,a0,-1032 # 800093e8 <CONSOLE_STATUS+0x3d8>
    800047f8:	00000097          	auipc	ra,0x0
    800047fc:	57c080e7          	jalr	1404(ra) # 80004d74 <_Z11printStringPKc>
    80004800:	00000613          	li	a2,0
    80004804:	00a00593          	li	a1,10
    80004808:	00048513          	mv	a0,s1
    8000480c:	00000097          	auipc	ra,0x0
    80004810:	718080e7          	jalr	1816(ra) # 80004f24 <_Z8printIntiii>
    printString(".\n");
    80004814:	00005517          	auipc	a0,0x5
    80004818:	bec50513          	addi	a0,a0,-1044 # 80009400 <CONSOLE_STATUS+0x3f0>
    8000481c:	00000097          	auipc	ra,0x0
    80004820:	558080e7          	jalr	1368(ra) # 80004d74 <_Z11printStringPKc>
    if(threadNum > n) {
    80004824:	0324c463          	blt	s1,s2,8000484c <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004828:	03205c63          	blez	s2,80004860 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    8000482c:	03800513          	li	a0,56
    80004830:	ffffe097          	auipc	ra,0xffffe
    80004834:	bbc080e7          	jalr	-1092(ra) # 800023ec <_Znwm>
    80004838:	00050a93          	mv	s5,a0
    8000483c:	00048593          	mv	a1,s1
    80004840:	00001097          	auipc	ra,0x1
    80004844:	804080e7          	jalr	-2044(ra) # 80005044 <_ZN9BufferCPPC1Ei>
    80004848:	0300006f          	j	80004878 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000484c:	00005517          	auipc	a0,0x5
    80004850:	bbc50513          	addi	a0,a0,-1092 # 80009408 <CONSOLE_STATUS+0x3f8>
    80004854:	00000097          	auipc	ra,0x0
    80004858:	520080e7          	jalr	1312(ra) # 80004d74 <_Z11printStringPKc>
        return;
    8000485c:	0140006f          	j	80004870 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004860:	00005517          	auipc	a0,0x5
    80004864:	be850513          	addi	a0,a0,-1048 # 80009448 <CONSOLE_STATUS+0x438>
    80004868:	00000097          	auipc	ra,0x0
    8000486c:	50c080e7          	jalr	1292(ra) # 80004d74 <_Z11printStringPKc>
        return;
    80004870:	000b8113          	mv	sp,s7
    80004874:	2380006f          	j	80004aac <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004878:	01000513          	li	a0,16
    8000487c:	ffffe097          	auipc	ra,0xffffe
    80004880:	b70080e7          	jalr	-1168(ra) # 800023ec <_Znwm>
    80004884:	00050493          	mv	s1,a0
    80004888:	00000593          	li	a1,0
    8000488c:	ffffe097          	auipc	ra,0xffffe
    80004890:	d58080e7          	jalr	-680(ra) # 800025e4 <_ZN9SemaphoreC1Ej>
    80004894:	00007797          	auipc	a5,0x7
    80004898:	0897b623          	sd	s1,140(a5) # 8000b920 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000489c:	00391793          	slli	a5,s2,0x3
    800048a0:	00f78793          	addi	a5,a5,15
    800048a4:	ff07f793          	andi	a5,a5,-16
    800048a8:	40f10133          	sub	sp,sp,a5
    800048ac:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    800048b0:	0019071b          	addiw	a4,s2,1
    800048b4:	00171793          	slli	a5,a4,0x1
    800048b8:	00e787b3          	add	a5,a5,a4
    800048bc:	00379793          	slli	a5,a5,0x3
    800048c0:	00f78793          	addi	a5,a5,15
    800048c4:	ff07f793          	andi	a5,a5,-16
    800048c8:	40f10133          	sub	sp,sp,a5
    800048cc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    800048d0:	00191c13          	slli	s8,s2,0x1
    800048d4:	012c07b3          	add	a5,s8,s2
    800048d8:	00379793          	slli	a5,a5,0x3
    800048dc:	00fa07b3          	add	a5,s4,a5
    800048e0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    800048e4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    800048e8:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    800048ec:	02800513          	li	a0,40
    800048f0:	ffffe097          	auipc	ra,0xffffe
    800048f4:	afc080e7          	jalr	-1284(ra) # 800023ec <_Znwm>
    800048f8:	00050b13          	mv	s6,a0
    800048fc:	012c0c33          	add	s8,s8,s2
    80004900:	003c1c13          	slli	s8,s8,0x3
    80004904:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004908:	ffffe097          	auipc	ra,0xffffe
    8000490c:	c24080e7          	jalr	-988(ra) # 8000252c <_ZN6ThreadC1Ev>
    80004910:	00007797          	auipc	a5,0x7
    80004914:	ec878793          	addi	a5,a5,-312 # 8000b7d8 <_ZTV12ConsumerSync+0x10>
    80004918:	00fb3023          	sd	a5,0(s6)
    8000491c:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004920:	000b0513          	mv	a0,s6
    80004924:	ffffe097          	auipc	ra,0xffffe
    80004928:	c4c080e7          	jalr	-948(ra) # 80002570 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    8000492c:	00000493          	li	s1,0
    80004930:	0380006f          	j	80004968 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004934:	00007797          	auipc	a5,0x7
    80004938:	e7c78793          	addi	a5,a5,-388 # 8000b7b0 <_ZTV12ProducerSync+0x10>
    8000493c:	00fcb023          	sd	a5,0(s9)
    80004940:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004944:	00349793          	slli	a5,s1,0x3
    80004948:	00f987b3          	add	a5,s3,a5
    8000494c:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004950:	00349793          	slli	a5,s1,0x3
    80004954:	00f987b3          	add	a5,s3,a5
    80004958:	0007b503          	ld	a0,0(a5)
    8000495c:	ffffe097          	auipc	ra,0xffffe
    80004960:	c14080e7          	jalr	-1004(ra) # 80002570 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004964:	0014849b          	addiw	s1,s1,1
    80004968:	0b24d063          	bge	s1,s2,80004a08 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000496c:	00149793          	slli	a5,s1,0x1
    80004970:	009787b3          	add	a5,a5,s1
    80004974:	00379793          	slli	a5,a5,0x3
    80004978:	00fa07b3          	add	a5,s4,a5
    8000497c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004980:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004984:	00007717          	auipc	a4,0x7
    80004988:	f9c73703          	ld	a4,-100(a4) # 8000b920 <_ZL10waitForAll>
    8000498c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004990:	02905863          	blez	s1,800049c0 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004994:	02800513          	li	a0,40
    80004998:	ffffe097          	auipc	ra,0xffffe
    8000499c:	a54080e7          	jalr	-1452(ra) # 800023ec <_Znwm>
    800049a0:	00050c93          	mv	s9,a0
    800049a4:	00149c13          	slli	s8,s1,0x1
    800049a8:	009c0c33          	add	s8,s8,s1
    800049ac:	003c1c13          	slli	s8,s8,0x3
    800049b0:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800049b4:	ffffe097          	auipc	ra,0xffffe
    800049b8:	b78080e7          	jalr	-1160(ra) # 8000252c <_ZN6ThreadC1Ev>
    800049bc:	f79ff06f          	j	80004934 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    800049c0:	02800513          	li	a0,40
    800049c4:	ffffe097          	auipc	ra,0xffffe
    800049c8:	a28080e7          	jalr	-1496(ra) # 800023ec <_Znwm>
    800049cc:	00050c93          	mv	s9,a0
    800049d0:	00149c13          	slli	s8,s1,0x1
    800049d4:	009c0c33          	add	s8,s8,s1
    800049d8:	003c1c13          	slli	s8,s8,0x3
    800049dc:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    800049e0:	ffffe097          	auipc	ra,0xffffe
    800049e4:	b4c080e7          	jalr	-1204(ra) # 8000252c <_ZN6ThreadC1Ev>
    800049e8:	00007797          	auipc	a5,0x7
    800049ec:	da078793          	addi	a5,a5,-608 # 8000b788 <_ZTV16ProducerKeyboard+0x10>
    800049f0:	00fcb023          	sd	a5,0(s9)
    800049f4:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    800049f8:	00349793          	slli	a5,s1,0x3
    800049fc:	00f987b3          	add	a5,s3,a5
    80004a00:	0197b023          	sd	s9,0(a5)
    80004a04:	f4dff06f          	j	80004950 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004a08:	ffffe097          	auipc	ra,0xffffe
    80004a0c:	b98080e7          	jalr	-1128(ra) # 800025a0 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a10:	00000493          	li	s1,0
    80004a14:	00994e63          	blt	s2,s1,80004a30 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004a18:	00007517          	auipc	a0,0x7
    80004a1c:	f0853503          	ld	a0,-248(a0) # 8000b920 <_ZL10waitForAll>
    80004a20:	ffffe097          	auipc	ra,0xffffe
    80004a24:	bfc080e7          	jalr	-1028(ra) # 8000261c <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004a28:	0014849b          	addiw	s1,s1,1
    80004a2c:	fe9ff06f          	j	80004a14 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004a30:	00000493          	li	s1,0
    80004a34:	0080006f          	j	80004a3c <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004a38:	0014849b          	addiw	s1,s1,1
    80004a3c:	0324d263          	bge	s1,s2,80004a60 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004a40:	00349793          	slli	a5,s1,0x3
    80004a44:	00f987b3          	add	a5,s3,a5
    80004a48:	0007b503          	ld	a0,0(a5)
    80004a4c:	fe0506e3          	beqz	a0,80004a38 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004a50:	00053783          	ld	a5,0(a0)
    80004a54:	0087b783          	ld	a5,8(a5)
    80004a58:	000780e7          	jalr	a5
    80004a5c:	fddff06f          	j	80004a38 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004a60:	000b0a63          	beqz	s6,80004a74 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004a64:	000b3783          	ld	a5,0(s6)
    80004a68:	0087b783          	ld	a5,8(a5)
    80004a6c:	000b0513          	mv	a0,s6
    80004a70:	000780e7          	jalr	a5
    delete waitForAll;
    80004a74:	00007517          	auipc	a0,0x7
    80004a78:	eac53503          	ld	a0,-340(a0) # 8000b920 <_ZL10waitForAll>
    80004a7c:	00050863          	beqz	a0,80004a8c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004a80:	00053783          	ld	a5,0(a0)
    80004a84:	0087b783          	ld	a5,8(a5)
    80004a88:	000780e7          	jalr	a5
    delete buffer;
    80004a8c:	000a8e63          	beqz	s5,80004aa8 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004a90:	000a8513          	mv	a0,s5
    80004a94:	00001097          	auipc	ra,0x1
    80004a98:	8a8080e7          	jalr	-1880(ra) # 8000533c <_ZN9BufferCPPD1Ev>
    80004a9c:	000a8513          	mv	a0,s5
    80004aa0:	ffffe097          	auipc	ra,0xffffe
    80004aa4:	974080e7          	jalr	-1676(ra) # 80002414 <_ZdlPv>
    80004aa8:	000b8113          	mv	sp,s7

}
    80004aac:	f8040113          	addi	sp,s0,-128
    80004ab0:	07813083          	ld	ra,120(sp)
    80004ab4:	07013403          	ld	s0,112(sp)
    80004ab8:	06813483          	ld	s1,104(sp)
    80004abc:	06013903          	ld	s2,96(sp)
    80004ac0:	05813983          	ld	s3,88(sp)
    80004ac4:	05013a03          	ld	s4,80(sp)
    80004ac8:	04813a83          	ld	s5,72(sp)
    80004acc:	04013b03          	ld	s6,64(sp)
    80004ad0:	03813b83          	ld	s7,56(sp)
    80004ad4:	03013c03          	ld	s8,48(sp)
    80004ad8:	02813c83          	ld	s9,40(sp)
    80004adc:	08010113          	addi	sp,sp,128
    80004ae0:	00008067          	ret
    80004ae4:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004ae8:	000a8513          	mv	a0,s5
    80004aec:	ffffe097          	auipc	ra,0xffffe
    80004af0:	928080e7          	jalr	-1752(ra) # 80002414 <_ZdlPv>
    80004af4:	00048513          	mv	a0,s1
    80004af8:	00008097          	auipc	ra,0x8
    80004afc:	f10080e7          	jalr	-240(ra) # 8000ca08 <_Unwind_Resume>
    80004b00:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80004b04:	00048513          	mv	a0,s1
    80004b08:	ffffe097          	auipc	ra,0xffffe
    80004b0c:	90c080e7          	jalr	-1780(ra) # 80002414 <_ZdlPv>
    80004b10:	00090513          	mv	a0,s2
    80004b14:	00008097          	auipc	ra,0x8
    80004b18:	ef4080e7          	jalr	-268(ra) # 8000ca08 <_Unwind_Resume>
    80004b1c:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80004b20:	000b0513          	mv	a0,s6
    80004b24:	ffffe097          	auipc	ra,0xffffe
    80004b28:	8f0080e7          	jalr	-1808(ra) # 80002414 <_ZdlPv>
    80004b2c:	00048513          	mv	a0,s1
    80004b30:	00008097          	auipc	ra,0x8
    80004b34:	ed8080e7          	jalr	-296(ra) # 8000ca08 <_Unwind_Resume>
    80004b38:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80004b3c:	000c8513          	mv	a0,s9
    80004b40:	ffffe097          	auipc	ra,0xffffe
    80004b44:	8d4080e7          	jalr	-1836(ra) # 80002414 <_ZdlPv>
    80004b48:	00048513          	mv	a0,s1
    80004b4c:	00008097          	auipc	ra,0x8
    80004b50:	ebc080e7          	jalr	-324(ra) # 8000ca08 <_Unwind_Resume>
    80004b54:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80004b58:	000c8513          	mv	a0,s9
    80004b5c:	ffffe097          	auipc	ra,0xffffe
    80004b60:	8b8080e7          	jalr	-1864(ra) # 80002414 <_ZdlPv>
    80004b64:	00048513          	mv	a0,s1
    80004b68:	00008097          	auipc	ra,0x8
    80004b6c:	ea0080e7          	jalr	-352(ra) # 8000ca08 <_Unwind_Resume>

0000000080004b70 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004b70:	ff010113          	addi	sp,sp,-16
    80004b74:	00113423          	sd	ra,8(sp)
    80004b78:	00813023          	sd	s0,0(sp)
    80004b7c:	01010413          	addi	s0,sp,16
    80004b80:	00007797          	auipc	a5,0x7
    80004b84:	c5878793          	addi	a5,a5,-936 # 8000b7d8 <_ZTV12ConsumerSync+0x10>
    80004b88:	00f53023          	sd	a5,0(a0)
    80004b8c:	ffffe097          	auipc	ra,0xffffe
    80004b90:	8b0080e7          	jalr	-1872(ra) # 8000243c <_ZN6ThreadD1Ev>
    80004b94:	00813083          	ld	ra,8(sp)
    80004b98:	00013403          	ld	s0,0(sp)
    80004b9c:	01010113          	addi	sp,sp,16
    80004ba0:	00008067          	ret

0000000080004ba4 <_ZN12ConsumerSyncD0Ev>:
    80004ba4:	fe010113          	addi	sp,sp,-32
    80004ba8:	00113c23          	sd	ra,24(sp)
    80004bac:	00813823          	sd	s0,16(sp)
    80004bb0:	00913423          	sd	s1,8(sp)
    80004bb4:	02010413          	addi	s0,sp,32
    80004bb8:	00050493          	mv	s1,a0
    80004bbc:	00007797          	auipc	a5,0x7
    80004bc0:	c1c78793          	addi	a5,a5,-996 # 8000b7d8 <_ZTV12ConsumerSync+0x10>
    80004bc4:	00f53023          	sd	a5,0(a0)
    80004bc8:	ffffe097          	auipc	ra,0xffffe
    80004bcc:	874080e7          	jalr	-1932(ra) # 8000243c <_ZN6ThreadD1Ev>
    80004bd0:	00048513          	mv	a0,s1
    80004bd4:	ffffe097          	auipc	ra,0xffffe
    80004bd8:	840080e7          	jalr	-1984(ra) # 80002414 <_ZdlPv>
    80004bdc:	01813083          	ld	ra,24(sp)
    80004be0:	01013403          	ld	s0,16(sp)
    80004be4:	00813483          	ld	s1,8(sp)
    80004be8:	02010113          	addi	sp,sp,32
    80004bec:	00008067          	ret

0000000080004bf0 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004bf0:	ff010113          	addi	sp,sp,-16
    80004bf4:	00113423          	sd	ra,8(sp)
    80004bf8:	00813023          	sd	s0,0(sp)
    80004bfc:	01010413          	addi	s0,sp,16
    80004c00:	00007797          	auipc	a5,0x7
    80004c04:	bb078793          	addi	a5,a5,-1104 # 8000b7b0 <_ZTV12ProducerSync+0x10>
    80004c08:	00f53023          	sd	a5,0(a0)
    80004c0c:	ffffe097          	auipc	ra,0xffffe
    80004c10:	830080e7          	jalr	-2000(ra) # 8000243c <_ZN6ThreadD1Ev>
    80004c14:	00813083          	ld	ra,8(sp)
    80004c18:	00013403          	ld	s0,0(sp)
    80004c1c:	01010113          	addi	sp,sp,16
    80004c20:	00008067          	ret

0000000080004c24 <_ZN12ProducerSyncD0Ev>:
    80004c24:	fe010113          	addi	sp,sp,-32
    80004c28:	00113c23          	sd	ra,24(sp)
    80004c2c:	00813823          	sd	s0,16(sp)
    80004c30:	00913423          	sd	s1,8(sp)
    80004c34:	02010413          	addi	s0,sp,32
    80004c38:	00050493          	mv	s1,a0
    80004c3c:	00007797          	auipc	a5,0x7
    80004c40:	b7478793          	addi	a5,a5,-1164 # 8000b7b0 <_ZTV12ProducerSync+0x10>
    80004c44:	00f53023          	sd	a5,0(a0)
    80004c48:	ffffd097          	auipc	ra,0xffffd
    80004c4c:	7f4080e7          	jalr	2036(ra) # 8000243c <_ZN6ThreadD1Ev>
    80004c50:	00048513          	mv	a0,s1
    80004c54:	ffffd097          	auipc	ra,0xffffd
    80004c58:	7c0080e7          	jalr	1984(ra) # 80002414 <_ZdlPv>
    80004c5c:	01813083          	ld	ra,24(sp)
    80004c60:	01013403          	ld	s0,16(sp)
    80004c64:	00813483          	ld	s1,8(sp)
    80004c68:	02010113          	addi	sp,sp,32
    80004c6c:	00008067          	ret

0000000080004c70 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004c70:	ff010113          	addi	sp,sp,-16
    80004c74:	00113423          	sd	ra,8(sp)
    80004c78:	00813023          	sd	s0,0(sp)
    80004c7c:	01010413          	addi	s0,sp,16
    80004c80:	00007797          	auipc	a5,0x7
    80004c84:	b0878793          	addi	a5,a5,-1272 # 8000b788 <_ZTV16ProducerKeyboard+0x10>
    80004c88:	00f53023          	sd	a5,0(a0)
    80004c8c:	ffffd097          	auipc	ra,0xffffd
    80004c90:	7b0080e7          	jalr	1968(ra) # 8000243c <_ZN6ThreadD1Ev>
    80004c94:	00813083          	ld	ra,8(sp)
    80004c98:	00013403          	ld	s0,0(sp)
    80004c9c:	01010113          	addi	sp,sp,16
    80004ca0:	00008067          	ret

0000000080004ca4 <_ZN16ProducerKeyboardD0Ev>:
    80004ca4:	fe010113          	addi	sp,sp,-32
    80004ca8:	00113c23          	sd	ra,24(sp)
    80004cac:	00813823          	sd	s0,16(sp)
    80004cb0:	00913423          	sd	s1,8(sp)
    80004cb4:	02010413          	addi	s0,sp,32
    80004cb8:	00050493          	mv	s1,a0
    80004cbc:	00007797          	auipc	a5,0x7
    80004cc0:	acc78793          	addi	a5,a5,-1332 # 8000b788 <_ZTV16ProducerKeyboard+0x10>
    80004cc4:	00f53023          	sd	a5,0(a0)
    80004cc8:	ffffd097          	auipc	ra,0xffffd
    80004ccc:	774080e7          	jalr	1908(ra) # 8000243c <_ZN6ThreadD1Ev>
    80004cd0:	00048513          	mv	a0,s1
    80004cd4:	ffffd097          	auipc	ra,0xffffd
    80004cd8:	740080e7          	jalr	1856(ra) # 80002414 <_ZdlPv>
    80004cdc:	01813083          	ld	ra,24(sp)
    80004ce0:	01013403          	ld	s0,16(sp)
    80004ce4:	00813483          	ld	s1,8(sp)
    80004ce8:	02010113          	addi	sp,sp,32
    80004cec:	00008067          	ret

0000000080004cf0 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004cf0:	ff010113          	addi	sp,sp,-16
    80004cf4:	00113423          	sd	ra,8(sp)
    80004cf8:	00813023          	sd	s0,0(sp)
    80004cfc:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80004d00:	02053583          	ld	a1,32(a0)
    80004d04:	fffff097          	auipc	ra,0xfffff
    80004d08:	7e4080e7          	jalr	2020(ra) # 800044e8 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004d0c:	00813083          	ld	ra,8(sp)
    80004d10:	00013403          	ld	s0,0(sp)
    80004d14:	01010113          	addi	sp,sp,16
    80004d18:	00008067          	ret

0000000080004d1c <_ZN12ProducerSync3runEv>:
    void run() override {
    80004d1c:	ff010113          	addi	sp,sp,-16
    80004d20:	00113423          	sd	ra,8(sp)
    80004d24:	00813023          	sd	s0,0(sp)
    80004d28:	01010413          	addi	s0,sp,16
        producer(td);
    80004d2c:	02053583          	ld	a1,32(a0)
    80004d30:	00000097          	auipc	ra,0x0
    80004d34:	878080e7          	jalr	-1928(ra) # 800045a8 <_ZN12ProducerSync8producerEPv>
    }
    80004d38:	00813083          	ld	ra,8(sp)
    80004d3c:	00013403          	ld	s0,0(sp)
    80004d40:	01010113          	addi	sp,sp,16
    80004d44:	00008067          	ret

0000000080004d48 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004d48:	ff010113          	addi	sp,sp,-16
    80004d4c:	00113423          	sd	ra,8(sp)
    80004d50:	00813023          	sd	s0,0(sp)
    80004d54:	01010413          	addi	s0,sp,16
        consumer(td);
    80004d58:	02053583          	ld	a1,32(a0)
    80004d5c:	00000097          	auipc	ra,0x0
    80004d60:	8e0080e7          	jalr	-1824(ra) # 8000463c <_ZN12ConsumerSync8consumerEPv>
    }
    80004d64:	00813083          	ld	ra,8(sp)
    80004d68:	00013403          	ld	s0,0(sp)
    80004d6c:	01010113          	addi	sp,sp,16
    80004d70:	00008067          	ret

0000000080004d74 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004d74:	fe010113          	addi	sp,sp,-32
    80004d78:	00113c23          	sd	ra,24(sp)
    80004d7c:	00813823          	sd	s0,16(sp)
    80004d80:	00913423          	sd	s1,8(sp)
    80004d84:	02010413          	addi	s0,sp,32
    80004d88:	00050493          	mv	s1,a0
    LOCK();
    80004d8c:	00100613          	li	a2,1
    80004d90:	00000593          	li	a1,0
    80004d94:	00007517          	auipc	a0,0x7
    80004d98:	b9450513          	addi	a0,a0,-1132 # 8000b928 <lockPrint>
    80004d9c:	ffffc097          	auipc	ra,0xffffc
    80004da0:	398080e7          	jalr	920(ra) # 80001134 <copy_and_swap>
    80004da4:	00050863          	beqz	a0,80004db4 <_Z11printStringPKc+0x40>
    80004da8:	ffffc097          	auipc	ra,0xffffc
    80004dac:	5e4080e7          	jalr	1508(ra) # 8000138c <_Z15thread_dispatchv>
    80004db0:	fddff06f          	j	80004d8c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004db4:	0004c503          	lbu	a0,0(s1)
    80004db8:	00050a63          	beqz	a0,80004dcc <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004dbc:	ffffc097          	auipc	ra,0xffffc
    80004dc0:	74c080e7          	jalr	1868(ra) # 80001508 <_Z4putcc>
        string++;
    80004dc4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004dc8:	fedff06f          	j	80004db4 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004dcc:	00000613          	li	a2,0
    80004dd0:	00100593          	li	a1,1
    80004dd4:	00007517          	auipc	a0,0x7
    80004dd8:	b5450513          	addi	a0,a0,-1196 # 8000b928 <lockPrint>
    80004ddc:	ffffc097          	auipc	ra,0xffffc
    80004de0:	358080e7          	jalr	856(ra) # 80001134 <copy_and_swap>
    80004de4:	fe0514e3          	bnez	a0,80004dcc <_Z11printStringPKc+0x58>
}
    80004de8:	01813083          	ld	ra,24(sp)
    80004dec:	01013403          	ld	s0,16(sp)
    80004df0:	00813483          	ld	s1,8(sp)
    80004df4:	02010113          	addi	sp,sp,32
    80004df8:	00008067          	ret

0000000080004dfc <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004dfc:	fd010113          	addi	sp,sp,-48
    80004e00:	02113423          	sd	ra,40(sp)
    80004e04:	02813023          	sd	s0,32(sp)
    80004e08:	00913c23          	sd	s1,24(sp)
    80004e0c:	01213823          	sd	s2,16(sp)
    80004e10:	01313423          	sd	s3,8(sp)
    80004e14:	01413023          	sd	s4,0(sp)
    80004e18:	03010413          	addi	s0,sp,48
    80004e1c:	00050993          	mv	s3,a0
    80004e20:	00058a13          	mv	s4,a1
    LOCK();
    80004e24:	00100613          	li	a2,1
    80004e28:	00000593          	li	a1,0
    80004e2c:	00007517          	auipc	a0,0x7
    80004e30:	afc50513          	addi	a0,a0,-1284 # 8000b928 <lockPrint>
    80004e34:	ffffc097          	auipc	ra,0xffffc
    80004e38:	300080e7          	jalr	768(ra) # 80001134 <copy_and_swap>
    80004e3c:	00050863          	beqz	a0,80004e4c <_Z9getStringPci+0x50>
    80004e40:	ffffc097          	auipc	ra,0xffffc
    80004e44:	54c080e7          	jalr	1356(ra) # 8000138c <_Z15thread_dispatchv>
    80004e48:	fddff06f          	j	80004e24 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004e4c:	00000913          	li	s2,0
    80004e50:	00090493          	mv	s1,s2
    80004e54:	0019091b          	addiw	s2,s2,1
    80004e58:	03495a63          	bge	s2,s4,80004e8c <_Z9getStringPci+0x90>
        cc = getc();
    80004e5c:	ffffc097          	auipc	ra,0xffffc
    80004e60:	66c080e7          	jalr	1644(ra) # 800014c8 <_Z4getcv>
        if(cc < 1)
    80004e64:	02050463          	beqz	a0,80004e8c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004e68:	009984b3          	add	s1,s3,s1
    80004e6c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004e70:	00a00793          	li	a5,10
    80004e74:	00f50a63          	beq	a0,a5,80004e88 <_Z9getStringPci+0x8c>
    80004e78:	00d00793          	li	a5,13
    80004e7c:	fcf51ae3          	bne	a0,a5,80004e50 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004e80:	00090493          	mv	s1,s2
    80004e84:	0080006f          	j	80004e8c <_Z9getStringPci+0x90>
    80004e88:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004e8c:	009984b3          	add	s1,s3,s1
    80004e90:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004e94:	00000613          	li	a2,0
    80004e98:	00100593          	li	a1,1
    80004e9c:	00007517          	auipc	a0,0x7
    80004ea0:	a8c50513          	addi	a0,a0,-1396 # 8000b928 <lockPrint>
    80004ea4:	ffffc097          	auipc	ra,0xffffc
    80004ea8:	290080e7          	jalr	656(ra) # 80001134 <copy_and_swap>
    80004eac:	fe0514e3          	bnez	a0,80004e94 <_Z9getStringPci+0x98>
    return buf;
}
    80004eb0:	00098513          	mv	a0,s3
    80004eb4:	02813083          	ld	ra,40(sp)
    80004eb8:	02013403          	ld	s0,32(sp)
    80004ebc:	01813483          	ld	s1,24(sp)
    80004ec0:	01013903          	ld	s2,16(sp)
    80004ec4:	00813983          	ld	s3,8(sp)
    80004ec8:	00013a03          	ld	s4,0(sp)
    80004ecc:	03010113          	addi	sp,sp,48
    80004ed0:	00008067          	ret

0000000080004ed4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004ed4:	ff010113          	addi	sp,sp,-16
    80004ed8:	00813423          	sd	s0,8(sp)
    80004edc:	01010413          	addi	s0,sp,16
    80004ee0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004ee4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004ee8:	0006c603          	lbu	a2,0(a3)
    80004eec:	fd06071b          	addiw	a4,a2,-48
    80004ef0:	0ff77713          	andi	a4,a4,255
    80004ef4:	00900793          	li	a5,9
    80004ef8:	02e7e063          	bltu	a5,a4,80004f18 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004efc:	0025179b          	slliw	a5,a0,0x2
    80004f00:	00a787bb          	addw	a5,a5,a0
    80004f04:	0017979b          	slliw	a5,a5,0x1
    80004f08:	00168693          	addi	a3,a3,1
    80004f0c:	00c787bb          	addw	a5,a5,a2
    80004f10:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004f14:	fd5ff06f          	j	80004ee8 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004f18:	00813403          	ld	s0,8(sp)
    80004f1c:	01010113          	addi	sp,sp,16
    80004f20:	00008067          	ret

0000000080004f24 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004f24:	fc010113          	addi	sp,sp,-64
    80004f28:	02113c23          	sd	ra,56(sp)
    80004f2c:	02813823          	sd	s0,48(sp)
    80004f30:	02913423          	sd	s1,40(sp)
    80004f34:	03213023          	sd	s2,32(sp)
    80004f38:	01313c23          	sd	s3,24(sp)
    80004f3c:	04010413          	addi	s0,sp,64
    80004f40:	00050493          	mv	s1,a0
    80004f44:	00058913          	mv	s2,a1
    80004f48:	00060993          	mv	s3,a2
    LOCK();
    80004f4c:	00100613          	li	a2,1
    80004f50:	00000593          	li	a1,0
    80004f54:	00007517          	auipc	a0,0x7
    80004f58:	9d450513          	addi	a0,a0,-1580 # 8000b928 <lockPrint>
    80004f5c:	ffffc097          	auipc	ra,0xffffc
    80004f60:	1d8080e7          	jalr	472(ra) # 80001134 <copy_and_swap>
    80004f64:	00050863          	beqz	a0,80004f74 <_Z8printIntiii+0x50>
    80004f68:	ffffc097          	auipc	ra,0xffffc
    80004f6c:	424080e7          	jalr	1060(ra) # 8000138c <_Z15thread_dispatchv>
    80004f70:	fddff06f          	j	80004f4c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004f74:	00098463          	beqz	s3,80004f7c <_Z8printIntiii+0x58>
    80004f78:	0804c463          	bltz	s1,80005000 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004f7c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004f80:	00000593          	li	a1,0
    }

    i = 0;
    80004f84:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004f88:	0009079b          	sext.w	a5,s2
    80004f8c:	0325773b          	remuw	a4,a0,s2
    80004f90:	00048613          	mv	a2,s1
    80004f94:	0014849b          	addiw	s1,s1,1
    80004f98:	02071693          	slli	a3,a4,0x20
    80004f9c:	0206d693          	srli	a3,a3,0x20
    80004fa0:	00007717          	auipc	a4,0x7
    80004fa4:	85070713          	addi	a4,a4,-1968 # 8000b7f0 <digits>
    80004fa8:	00d70733          	add	a4,a4,a3
    80004fac:	00074683          	lbu	a3,0(a4)
    80004fb0:	fd040713          	addi	a4,s0,-48
    80004fb4:	00c70733          	add	a4,a4,a2
    80004fb8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004fbc:	0005071b          	sext.w	a4,a0
    80004fc0:	0325553b          	divuw	a0,a0,s2
    80004fc4:	fcf772e3          	bgeu	a4,a5,80004f88 <_Z8printIntiii+0x64>
    if(neg)
    80004fc8:	00058c63          	beqz	a1,80004fe0 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004fcc:	fd040793          	addi	a5,s0,-48
    80004fd0:	009784b3          	add	s1,a5,s1
    80004fd4:	02d00793          	li	a5,45
    80004fd8:	fef48823          	sb	a5,-16(s1)
    80004fdc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004fe0:	fff4849b          	addiw	s1,s1,-1
    80004fe4:	0204c463          	bltz	s1,8000500c <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004fe8:	fd040793          	addi	a5,s0,-48
    80004fec:	009787b3          	add	a5,a5,s1
    80004ff0:	ff07c503          	lbu	a0,-16(a5)
    80004ff4:	ffffc097          	auipc	ra,0xffffc
    80004ff8:	514080e7          	jalr	1300(ra) # 80001508 <_Z4putcc>
    80004ffc:	fe5ff06f          	j	80004fe0 <_Z8printIntiii+0xbc>
        x = -xx;
    80005000:	4090053b          	negw	a0,s1
        neg = 1;
    80005004:	00100593          	li	a1,1
        x = -xx;
    80005008:	f7dff06f          	j	80004f84 <_Z8printIntiii+0x60>

    UNLOCK();
    8000500c:	00000613          	li	a2,0
    80005010:	00100593          	li	a1,1
    80005014:	00007517          	auipc	a0,0x7
    80005018:	91450513          	addi	a0,a0,-1772 # 8000b928 <lockPrint>
    8000501c:	ffffc097          	auipc	ra,0xffffc
    80005020:	118080e7          	jalr	280(ra) # 80001134 <copy_and_swap>
    80005024:	fe0514e3          	bnez	a0,8000500c <_Z8printIntiii+0xe8>
    80005028:	03813083          	ld	ra,56(sp)
    8000502c:	03013403          	ld	s0,48(sp)
    80005030:	02813483          	ld	s1,40(sp)
    80005034:	02013903          	ld	s2,32(sp)
    80005038:	01813983          	ld	s3,24(sp)
    8000503c:	04010113          	addi	sp,sp,64
    80005040:	00008067          	ret

0000000080005044 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005044:	fd010113          	addi	sp,sp,-48
    80005048:	02113423          	sd	ra,40(sp)
    8000504c:	02813023          	sd	s0,32(sp)
    80005050:	00913c23          	sd	s1,24(sp)
    80005054:	01213823          	sd	s2,16(sp)
    80005058:	01313423          	sd	s3,8(sp)
    8000505c:	03010413          	addi	s0,sp,48
    80005060:	00050493          	mv	s1,a0
    80005064:	00058913          	mv	s2,a1
    80005068:	0015879b          	addiw	a5,a1,1
    8000506c:	0007851b          	sext.w	a0,a5
    80005070:	00f4a023          	sw	a5,0(s1)
    80005074:	0004a823          	sw	zero,16(s1)
    80005078:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000507c:	00251513          	slli	a0,a0,0x2
    80005080:	ffffc097          	auipc	ra,0xffffc
    80005084:	10c080e7          	jalr	268(ra) # 8000118c <_Z9mem_allocm>
    80005088:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000508c:	01000513          	li	a0,16
    80005090:	ffffd097          	auipc	ra,0xffffd
    80005094:	35c080e7          	jalr	860(ra) # 800023ec <_Znwm>
    80005098:	00050993          	mv	s3,a0
    8000509c:	00000593          	li	a1,0
    800050a0:	ffffd097          	auipc	ra,0xffffd
    800050a4:	544080e7          	jalr	1348(ra) # 800025e4 <_ZN9SemaphoreC1Ej>
    800050a8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800050ac:	01000513          	li	a0,16
    800050b0:	ffffd097          	auipc	ra,0xffffd
    800050b4:	33c080e7          	jalr	828(ra) # 800023ec <_Znwm>
    800050b8:	00050993          	mv	s3,a0
    800050bc:	00090593          	mv	a1,s2
    800050c0:	ffffd097          	auipc	ra,0xffffd
    800050c4:	524080e7          	jalr	1316(ra) # 800025e4 <_ZN9SemaphoreC1Ej>
    800050c8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800050cc:	01000513          	li	a0,16
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	31c080e7          	jalr	796(ra) # 800023ec <_Znwm>
    800050d8:	00050913          	mv	s2,a0
    800050dc:	00100593          	li	a1,1
    800050e0:	ffffd097          	auipc	ra,0xffffd
    800050e4:	504080e7          	jalr	1284(ra) # 800025e4 <_ZN9SemaphoreC1Ej>
    800050e8:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800050ec:	01000513          	li	a0,16
    800050f0:	ffffd097          	auipc	ra,0xffffd
    800050f4:	2fc080e7          	jalr	764(ra) # 800023ec <_Znwm>
    800050f8:	00050913          	mv	s2,a0
    800050fc:	00100593          	li	a1,1
    80005100:	ffffd097          	auipc	ra,0xffffd
    80005104:	4e4080e7          	jalr	1252(ra) # 800025e4 <_ZN9SemaphoreC1Ej>
    80005108:	0324b823          	sd	s2,48(s1)
}
    8000510c:	02813083          	ld	ra,40(sp)
    80005110:	02013403          	ld	s0,32(sp)
    80005114:	01813483          	ld	s1,24(sp)
    80005118:	01013903          	ld	s2,16(sp)
    8000511c:	00813983          	ld	s3,8(sp)
    80005120:	03010113          	addi	sp,sp,48
    80005124:	00008067          	ret
    80005128:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000512c:	00098513          	mv	a0,s3
    80005130:	ffffd097          	auipc	ra,0xffffd
    80005134:	2e4080e7          	jalr	740(ra) # 80002414 <_ZdlPv>
    80005138:	00048513          	mv	a0,s1
    8000513c:	00008097          	auipc	ra,0x8
    80005140:	8cc080e7          	jalr	-1844(ra) # 8000ca08 <_Unwind_Resume>
    80005144:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005148:	00098513          	mv	a0,s3
    8000514c:	ffffd097          	auipc	ra,0xffffd
    80005150:	2c8080e7          	jalr	712(ra) # 80002414 <_ZdlPv>
    80005154:	00048513          	mv	a0,s1
    80005158:	00008097          	auipc	ra,0x8
    8000515c:	8b0080e7          	jalr	-1872(ra) # 8000ca08 <_Unwind_Resume>
    80005160:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005164:	00090513          	mv	a0,s2
    80005168:	ffffd097          	auipc	ra,0xffffd
    8000516c:	2ac080e7          	jalr	684(ra) # 80002414 <_ZdlPv>
    80005170:	00048513          	mv	a0,s1
    80005174:	00008097          	auipc	ra,0x8
    80005178:	894080e7          	jalr	-1900(ra) # 8000ca08 <_Unwind_Resume>
    8000517c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005180:	00090513          	mv	a0,s2
    80005184:	ffffd097          	auipc	ra,0xffffd
    80005188:	290080e7          	jalr	656(ra) # 80002414 <_ZdlPv>
    8000518c:	00048513          	mv	a0,s1
    80005190:	00008097          	auipc	ra,0x8
    80005194:	878080e7          	jalr	-1928(ra) # 8000ca08 <_Unwind_Resume>

0000000080005198 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005198:	fe010113          	addi	sp,sp,-32
    8000519c:	00113c23          	sd	ra,24(sp)
    800051a0:	00813823          	sd	s0,16(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	01213023          	sd	s2,0(sp)
    800051ac:	02010413          	addi	s0,sp,32
    800051b0:	00050493          	mv	s1,a0
    800051b4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800051b8:	01853503          	ld	a0,24(a0)
    800051bc:	ffffd097          	auipc	ra,0xffffd
    800051c0:	460080e7          	jalr	1120(ra) # 8000261c <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800051c4:	0304b503          	ld	a0,48(s1)
    800051c8:	ffffd097          	auipc	ra,0xffffd
    800051cc:	454080e7          	jalr	1108(ra) # 8000261c <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800051d0:	0084b783          	ld	a5,8(s1)
    800051d4:	0144a703          	lw	a4,20(s1)
    800051d8:	00271713          	slli	a4,a4,0x2
    800051dc:	00e787b3          	add	a5,a5,a4
    800051e0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800051e4:	0144a783          	lw	a5,20(s1)
    800051e8:	0017879b          	addiw	a5,a5,1
    800051ec:	0004a703          	lw	a4,0(s1)
    800051f0:	02e7e7bb          	remw	a5,a5,a4
    800051f4:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800051f8:	0304b503          	ld	a0,48(s1)
    800051fc:	ffffd097          	auipc	ra,0xffffd
    80005200:	44c080e7          	jalr	1100(ra) # 80002648 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005204:	0204b503          	ld	a0,32(s1)
    80005208:	ffffd097          	auipc	ra,0xffffd
    8000520c:	440080e7          	jalr	1088(ra) # 80002648 <_ZN9Semaphore6signalEv>

}
    80005210:	01813083          	ld	ra,24(sp)
    80005214:	01013403          	ld	s0,16(sp)
    80005218:	00813483          	ld	s1,8(sp)
    8000521c:	00013903          	ld	s2,0(sp)
    80005220:	02010113          	addi	sp,sp,32
    80005224:	00008067          	ret

0000000080005228 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005228:	fe010113          	addi	sp,sp,-32
    8000522c:	00113c23          	sd	ra,24(sp)
    80005230:	00813823          	sd	s0,16(sp)
    80005234:	00913423          	sd	s1,8(sp)
    80005238:	01213023          	sd	s2,0(sp)
    8000523c:	02010413          	addi	s0,sp,32
    80005240:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005244:	02053503          	ld	a0,32(a0)
    80005248:	ffffd097          	auipc	ra,0xffffd
    8000524c:	3d4080e7          	jalr	980(ra) # 8000261c <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80005250:	0284b503          	ld	a0,40(s1)
    80005254:	ffffd097          	auipc	ra,0xffffd
    80005258:	3c8080e7          	jalr	968(ra) # 8000261c <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000525c:	0084b703          	ld	a4,8(s1)
    80005260:	0104a783          	lw	a5,16(s1)
    80005264:	00279693          	slli	a3,a5,0x2
    80005268:	00d70733          	add	a4,a4,a3
    8000526c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005270:	0017879b          	addiw	a5,a5,1
    80005274:	0004a703          	lw	a4,0(s1)
    80005278:	02e7e7bb          	remw	a5,a5,a4
    8000527c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005280:	0284b503          	ld	a0,40(s1)
    80005284:	ffffd097          	auipc	ra,0xffffd
    80005288:	3c4080e7          	jalr	964(ra) # 80002648 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000528c:	0184b503          	ld	a0,24(s1)
    80005290:	ffffd097          	auipc	ra,0xffffd
    80005294:	3b8080e7          	jalr	952(ra) # 80002648 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005298:	00090513          	mv	a0,s2
    8000529c:	01813083          	ld	ra,24(sp)
    800052a0:	01013403          	ld	s0,16(sp)
    800052a4:	00813483          	ld	s1,8(sp)
    800052a8:	00013903          	ld	s2,0(sp)
    800052ac:	02010113          	addi	sp,sp,32
    800052b0:	00008067          	ret

00000000800052b4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800052b4:	fe010113          	addi	sp,sp,-32
    800052b8:	00113c23          	sd	ra,24(sp)
    800052bc:	00813823          	sd	s0,16(sp)
    800052c0:	00913423          	sd	s1,8(sp)
    800052c4:	01213023          	sd	s2,0(sp)
    800052c8:	02010413          	addi	s0,sp,32
    800052cc:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800052d0:	02853503          	ld	a0,40(a0)
    800052d4:	ffffd097          	auipc	ra,0xffffd
    800052d8:	348080e7          	jalr	840(ra) # 8000261c <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800052dc:	0304b503          	ld	a0,48(s1)
    800052e0:	ffffd097          	auipc	ra,0xffffd
    800052e4:	33c080e7          	jalr	828(ra) # 8000261c <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800052e8:	0144a783          	lw	a5,20(s1)
    800052ec:	0104a903          	lw	s2,16(s1)
    800052f0:	0327ce63          	blt	a5,s2,8000532c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800052f4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800052f8:	0304b503          	ld	a0,48(s1)
    800052fc:	ffffd097          	auipc	ra,0xffffd
    80005300:	34c080e7          	jalr	844(ra) # 80002648 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005304:	0284b503          	ld	a0,40(s1)
    80005308:	ffffd097          	auipc	ra,0xffffd
    8000530c:	340080e7          	jalr	832(ra) # 80002648 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005310:	00090513          	mv	a0,s2
    80005314:	01813083          	ld	ra,24(sp)
    80005318:	01013403          	ld	s0,16(sp)
    8000531c:	00813483          	ld	s1,8(sp)
    80005320:	00013903          	ld	s2,0(sp)
    80005324:	02010113          	addi	sp,sp,32
    80005328:	00008067          	ret
        ret = cap - head + tail;
    8000532c:	0004a703          	lw	a4,0(s1)
    80005330:	4127093b          	subw	s2,a4,s2
    80005334:	00f9093b          	addw	s2,s2,a5
    80005338:	fc1ff06f          	j	800052f8 <_ZN9BufferCPP6getCntEv+0x44>

000000008000533c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000533c:	fe010113          	addi	sp,sp,-32
    80005340:	00113c23          	sd	ra,24(sp)
    80005344:	00813823          	sd	s0,16(sp)
    80005348:	00913423          	sd	s1,8(sp)
    8000534c:	02010413          	addi	s0,sp,32
    80005350:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005354:	00a00513          	li	a0,10
    80005358:	ffffd097          	auipc	ra,0xffffd
    8000535c:	344080e7          	jalr	836(ra) # 8000269c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005360:	00004517          	auipc	a0,0x4
    80005364:	21050513          	addi	a0,a0,528 # 80009570 <CONSOLE_STATUS+0x560>
    80005368:	00000097          	auipc	ra,0x0
    8000536c:	a0c080e7          	jalr	-1524(ra) # 80004d74 <_Z11printStringPKc>
    while (getCnt()) {
    80005370:	00048513          	mv	a0,s1
    80005374:	00000097          	auipc	ra,0x0
    80005378:	f40080e7          	jalr	-192(ra) # 800052b4 <_ZN9BufferCPP6getCntEv>
    8000537c:	02050c63          	beqz	a0,800053b4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005380:	0084b783          	ld	a5,8(s1)
    80005384:	0104a703          	lw	a4,16(s1)
    80005388:	00271713          	slli	a4,a4,0x2
    8000538c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005390:	0007c503          	lbu	a0,0(a5)
    80005394:	ffffd097          	auipc	ra,0xffffd
    80005398:	308080e7          	jalr	776(ra) # 8000269c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000539c:	0104a783          	lw	a5,16(s1)
    800053a0:	0017879b          	addiw	a5,a5,1
    800053a4:	0004a703          	lw	a4,0(s1)
    800053a8:	02e7e7bb          	remw	a5,a5,a4
    800053ac:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800053b0:	fc1ff06f          	j	80005370 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800053b4:	02100513          	li	a0,33
    800053b8:	ffffd097          	auipc	ra,0xffffd
    800053bc:	2e4080e7          	jalr	740(ra) # 8000269c <_ZN7Console4putcEc>
    Console::putc('\n');
    800053c0:	00a00513          	li	a0,10
    800053c4:	ffffd097          	auipc	ra,0xffffd
    800053c8:	2d8080e7          	jalr	728(ra) # 8000269c <_ZN7Console4putcEc>
    mem_free(buffer);
    800053cc:	0084b503          	ld	a0,8(s1)
    800053d0:	ffffc097          	auipc	ra,0xffffc
    800053d4:	df8080e7          	jalr	-520(ra) # 800011c8 <_Z8mem_freePv>
    delete itemAvailable;
    800053d8:	0204b503          	ld	a0,32(s1)
    800053dc:	00050863          	beqz	a0,800053ec <_ZN9BufferCPPD1Ev+0xb0>
    800053e0:	00053783          	ld	a5,0(a0)
    800053e4:	0087b783          	ld	a5,8(a5)
    800053e8:	000780e7          	jalr	a5
    delete spaceAvailable;
    800053ec:	0184b503          	ld	a0,24(s1)
    800053f0:	00050863          	beqz	a0,80005400 <_ZN9BufferCPPD1Ev+0xc4>
    800053f4:	00053783          	ld	a5,0(a0)
    800053f8:	0087b783          	ld	a5,8(a5)
    800053fc:	000780e7          	jalr	a5
    delete mutexTail;
    80005400:	0304b503          	ld	a0,48(s1)
    80005404:	00050863          	beqz	a0,80005414 <_ZN9BufferCPPD1Ev+0xd8>
    80005408:	00053783          	ld	a5,0(a0)
    8000540c:	0087b783          	ld	a5,8(a5)
    80005410:	000780e7          	jalr	a5
    delete mutexHead;
    80005414:	0284b503          	ld	a0,40(s1)
    80005418:	00050863          	beqz	a0,80005428 <_ZN9BufferCPPD1Ev+0xec>
    8000541c:	00053783          	ld	a5,0(a0)
    80005420:	0087b783          	ld	a5,8(a5)
    80005424:	000780e7          	jalr	a5
}
    80005428:	01813083          	ld	ra,24(sp)
    8000542c:	01013403          	ld	s0,16(sp)
    80005430:	00813483          	ld	s1,8(sp)
    80005434:	02010113          	addi	sp,sp,32
    80005438:	00008067          	ret

000000008000543c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    8000543c:	fe010113          	addi	sp,sp,-32
    80005440:	00113c23          	sd	ra,24(sp)
    80005444:	00813823          	sd	s0,16(sp)
    80005448:	00913423          	sd	s1,8(sp)
    8000544c:	01213023          	sd	s2,0(sp)
    80005450:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005454:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005458:	00600493          	li	s1,6
    while (--i > 0) {
    8000545c:	fff4849b          	addiw	s1,s1,-1
    80005460:	04905463          	blez	s1,800054a8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005464:	00004517          	auipc	a0,0x4
    80005468:	12450513          	addi	a0,a0,292 # 80009588 <CONSOLE_STATUS+0x578>
    8000546c:	00000097          	auipc	ra,0x0
    80005470:	908080e7          	jalr	-1784(ra) # 80004d74 <_Z11printStringPKc>
        printInt(sleep_time);
    80005474:	00000613          	li	a2,0
    80005478:	00a00593          	li	a1,10
    8000547c:	0009051b          	sext.w	a0,s2
    80005480:	00000097          	auipc	ra,0x0
    80005484:	aa4080e7          	jalr	-1372(ra) # 80004f24 <_Z8printIntiii>
        printString(" !\n");
    80005488:	00004517          	auipc	a0,0x4
    8000548c:	10850513          	addi	a0,a0,264 # 80009590 <CONSOLE_STATUS+0x580>
    80005490:	00000097          	auipc	ra,0x0
    80005494:	8e4080e7          	jalr	-1820(ra) # 80004d74 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005498:	00090513          	mv	a0,s2
    8000549c:	ffffc097          	auipc	ra,0xffffc
    800054a0:	0a4080e7          	jalr	164(ra) # 80001540 <_Z10time_sleepm>
    while (--i > 0) {
    800054a4:	fb9ff06f          	j	8000545c <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    800054a8:	00a00793          	li	a5,10
    800054ac:	02f95933          	divu	s2,s2,a5
    800054b0:	fff90913          	addi	s2,s2,-1
    800054b4:	00006797          	auipc	a5,0x6
    800054b8:	47c78793          	addi	a5,a5,1148 # 8000b930 <_ZL8finished>
    800054bc:	01278933          	add	s2,a5,s2
    800054c0:	00100793          	li	a5,1
    800054c4:	00f90023          	sb	a5,0(s2)
}
    800054c8:	01813083          	ld	ra,24(sp)
    800054cc:	01013403          	ld	s0,16(sp)
    800054d0:	00813483          	ld	s1,8(sp)
    800054d4:	00013903          	ld	s2,0(sp)
    800054d8:	02010113          	addi	sp,sp,32
    800054dc:	00008067          	ret

00000000800054e0 <_Z12testSleepingv>:

void testSleeping() {
    800054e0:	fc010113          	addi	sp,sp,-64
    800054e4:	02113c23          	sd	ra,56(sp)
    800054e8:	02813823          	sd	s0,48(sp)
    800054ec:	02913423          	sd	s1,40(sp)
    800054f0:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800054f4:	00a00793          	li	a5,10
    800054f8:	fcf43823          	sd	a5,-48(s0)
    800054fc:	01400793          	li	a5,20
    80005500:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005504:	00000493          	li	s1,0
    80005508:	02c0006f          	j	80005534 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    8000550c:	00349793          	slli	a5,s1,0x3
    80005510:	fd040613          	addi	a2,s0,-48
    80005514:	00f60633          	add	a2,a2,a5
    80005518:	00000597          	auipc	a1,0x0
    8000551c:	f2458593          	addi	a1,a1,-220 # 8000543c <_ZL9sleepyRunPv>
    80005520:	fc040513          	addi	a0,s0,-64
    80005524:	00f50533          	add	a0,a0,a5
    80005528:	ffffc097          	auipc	ra,0xffffc
    8000552c:	d98080e7          	jalr	-616(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005530:	0014849b          	addiw	s1,s1,1
    80005534:	00100793          	li	a5,1
    80005538:	fc97dae3          	bge	a5,s1,8000550c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    8000553c:	00006797          	auipc	a5,0x6
    80005540:	3f47c783          	lbu	a5,1012(a5) # 8000b930 <_ZL8finished>
    80005544:	fe078ce3          	beqz	a5,8000553c <_Z12testSleepingv+0x5c>
    80005548:	00006797          	auipc	a5,0x6
    8000554c:	3e97c783          	lbu	a5,1001(a5) # 8000b931 <_ZL8finished+0x1>
    80005550:	fe0786e3          	beqz	a5,8000553c <_Z12testSleepingv+0x5c>
}
    80005554:	03813083          	ld	ra,56(sp)
    80005558:	03013403          	ld	s0,48(sp)
    8000555c:	02813483          	ld	s1,40(sp)
    80005560:	04010113          	addi	sp,sp,64
    80005564:	00008067          	ret

0000000080005568 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005568:	fe010113          	addi	sp,sp,-32
    8000556c:	00113c23          	sd	ra,24(sp)
    80005570:	00813823          	sd	s0,16(sp)
    80005574:	00913423          	sd	s1,8(sp)
    80005578:	01213023          	sd	s2,0(sp)
    8000557c:	02010413          	addi	s0,sp,32
    80005580:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005584:	00100793          	li	a5,1
    80005588:	02a7f863          	bgeu	a5,a0,800055b8 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000558c:	00a00793          	li	a5,10
    80005590:	02f577b3          	remu	a5,a0,a5
    80005594:	02078e63          	beqz	a5,800055d0 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005598:	fff48513          	addi	a0,s1,-1
    8000559c:	00000097          	auipc	ra,0x0
    800055a0:	fcc080e7          	jalr	-52(ra) # 80005568 <_ZL9fibonaccim>
    800055a4:	00050913          	mv	s2,a0
    800055a8:	ffe48513          	addi	a0,s1,-2
    800055ac:	00000097          	auipc	ra,0x0
    800055b0:	fbc080e7          	jalr	-68(ra) # 80005568 <_ZL9fibonaccim>
    800055b4:	00a90533          	add	a0,s2,a0
}
    800055b8:	01813083          	ld	ra,24(sp)
    800055bc:	01013403          	ld	s0,16(sp)
    800055c0:	00813483          	ld	s1,8(sp)
    800055c4:	00013903          	ld	s2,0(sp)
    800055c8:	02010113          	addi	sp,sp,32
    800055cc:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800055d0:	ffffc097          	auipc	ra,0xffffc
    800055d4:	dbc080e7          	jalr	-580(ra) # 8000138c <_Z15thread_dispatchv>
    800055d8:	fc1ff06f          	j	80005598 <_ZL9fibonaccim+0x30>

00000000800055dc <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800055dc:	fe010113          	addi	sp,sp,-32
    800055e0:	00113c23          	sd	ra,24(sp)
    800055e4:	00813823          	sd	s0,16(sp)
    800055e8:	00913423          	sd	s1,8(sp)
    800055ec:	01213023          	sd	s2,0(sp)
    800055f0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800055f4:	00a00493          	li	s1,10
    800055f8:	0400006f          	j	80005638 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800055fc:	00004517          	auipc	a0,0x4
    80005600:	edc50513          	addi	a0,a0,-292 # 800094d8 <CONSOLE_STATUS+0x4c8>
    80005604:	fffff097          	auipc	ra,0xfffff
    80005608:	770080e7          	jalr	1904(ra) # 80004d74 <_Z11printStringPKc>
    8000560c:	00000613          	li	a2,0
    80005610:	00a00593          	li	a1,10
    80005614:	00048513          	mv	a0,s1
    80005618:	00000097          	auipc	ra,0x0
    8000561c:	90c080e7          	jalr	-1780(ra) # 80004f24 <_Z8printIntiii>
    80005620:	00004517          	auipc	a0,0x4
    80005624:	b7050513          	addi	a0,a0,-1168 # 80009190 <CONSOLE_STATUS+0x180>
    80005628:	fffff097          	auipc	ra,0xfffff
    8000562c:	74c080e7          	jalr	1868(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005630:	0014849b          	addiw	s1,s1,1
    80005634:	0ff4f493          	andi	s1,s1,255
    80005638:	00c00793          	li	a5,12
    8000563c:	fc97f0e3          	bgeu	a5,s1,800055fc <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005640:	00004517          	auipc	a0,0x4
    80005644:	ea050513          	addi	a0,a0,-352 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005648:	fffff097          	auipc	ra,0xfffff
    8000564c:	72c080e7          	jalr	1836(ra) # 80004d74 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005650:	00500313          	li	t1,5
    thread_dispatch();
    80005654:	ffffc097          	auipc	ra,0xffffc
    80005658:	d38080e7          	jalr	-712(ra) # 8000138c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000565c:	01000513          	li	a0,16
    80005660:	00000097          	auipc	ra,0x0
    80005664:	f08080e7          	jalr	-248(ra) # 80005568 <_ZL9fibonaccim>
    80005668:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000566c:	00004517          	auipc	a0,0x4
    80005670:	e8450513          	addi	a0,a0,-380 # 800094f0 <CONSOLE_STATUS+0x4e0>
    80005674:	fffff097          	auipc	ra,0xfffff
    80005678:	700080e7          	jalr	1792(ra) # 80004d74 <_Z11printStringPKc>
    8000567c:	00000613          	li	a2,0
    80005680:	00a00593          	li	a1,10
    80005684:	0009051b          	sext.w	a0,s2
    80005688:	00000097          	auipc	ra,0x0
    8000568c:	89c080e7          	jalr	-1892(ra) # 80004f24 <_Z8printIntiii>
    80005690:	00004517          	auipc	a0,0x4
    80005694:	b0050513          	addi	a0,a0,-1280 # 80009190 <CONSOLE_STATUS+0x180>
    80005698:	fffff097          	auipc	ra,0xfffff
    8000569c:	6dc080e7          	jalr	1756(ra) # 80004d74 <_Z11printStringPKc>
    800056a0:	0400006f          	j	800056e0 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800056a4:	00004517          	auipc	a0,0x4
    800056a8:	e3450513          	addi	a0,a0,-460 # 800094d8 <CONSOLE_STATUS+0x4c8>
    800056ac:	fffff097          	auipc	ra,0xfffff
    800056b0:	6c8080e7          	jalr	1736(ra) # 80004d74 <_Z11printStringPKc>
    800056b4:	00000613          	li	a2,0
    800056b8:	00a00593          	li	a1,10
    800056bc:	00048513          	mv	a0,s1
    800056c0:	00000097          	auipc	ra,0x0
    800056c4:	864080e7          	jalr	-1948(ra) # 80004f24 <_Z8printIntiii>
    800056c8:	00004517          	auipc	a0,0x4
    800056cc:	ac850513          	addi	a0,a0,-1336 # 80009190 <CONSOLE_STATUS+0x180>
    800056d0:	fffff097          	auipc	ra,0xfffff
    800056d4:	6a4080e7          	jalr	1700(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800056d8:	0014849b          	addiw	s1,s1,1
    800056dc:	0ff4f493          	andi	s1,s1,255
    800056e0:	00f00793          	li	a5,15
    800056e4:	fc97f0e3          	bgeu	a5,s1,800056a4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800056e8:	00004517          	auipc	a0,0x4
    800056ec:	e1850513          	addi	a0,a0,-488 # 80009500 <CONSOLE_STATUS+0x4f0>
    800056f0:	fffff097          	auipc	ra,0xfffff
    800056f4:	684080e7          	jalr	1668(ra) # 80004d74 <_Z11printStringPKc>
    finishedD = true;
    800056f8:	00100793          	li	a5,1
    800056fc:	00006717          	auipc	a4,0x6
    80005700:	22f70b23          	sb	a5,566(a4) # 8000b932 <_ZL9finishedD>
    thread_dispatch();
    80005704:	ffffc097          	auipc	ra,0xffffc
    80005708:	c88080e7          	jalr	-888(ra) # 8000138c <_Z15thread_dispatchv>
}
    8000570c:	01813083          	ld	ra,24(sp)
    80005710:	01013403          	ld	s0,16(sp)
    80005714:	00813483          	ld	s1,8(sp)
    80005718:	00013903          	ld	s2,0(sp)
    8000571c:	02010113          	addi	sp,sp,32
    80005720:	00008067          	ret

0000000080005724 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005724:	fe010113          	addi	sp,sp,-32
    80005728:	00113c23          	sd	ra,24(sp)
    8000572c:	00813823          	sd	s0,16(sp)
    80005730:	00913423          	sd	s1,8(sp)
    80005734:	01213023          	sd	s2,0(sp)
    80005738:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    8000573c:	00000493          	li	s1,0
    80005740:	0400006f          	j	80005780 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005744:	00004517          	auipc	a0,0x4
    80005748:	d6450513          	addi	a0,a0,-668 # 800094a8 <CONSOLE_STATUS+0x498>
    8000574c:	fffff097          	auipc	ra,0xfffff
    80005750:	628080e7          	jalr	1576(ra) # 80004d74 <_Z11printStringPKc>
    80005754:	00000613          	li	a2,0
    80005758:	00a00593          	li	a1,10
    8000575c:	00048513          	mv	a0,s1
    80005760:	fffff097          	auipc	ra,0xfffff
    80005764:	7c4080e7          	jalr	1988(ra) # 80004f24 <_Z8printIntiii>
    80005768:	00004517          	auipc	a0,0x4
    8000576c:	a2850513          	addi	a0,a0,-1496 # 80009190 <CONSOLE_STATUS+0x180>
    80005770:	fffff097          	auipc	ra,0xfffff
    80005774:	604080e7          	jalr	1540(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005778:	0014849b          	addiw	s1,s1,1
    8000577c:	0ff4f493          	andi	s1,s1,255
    80005780:	00200793          	li	a5,2
    80005784:	fc97f0e3          	bgeu	a5,s1,80005744 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005788:	00004517          	auipc	a0,0x4
    8000578c:	d2850513          	addi	a0,a0,-728 # 800094b0 <CONSOLE_STATUS+0x4a0>
    80005790:	fffff097          	auipc	ra,0xfffff
    80005794:	5e4080e7          	jalr	1508(ra) # 80004d74 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005798:	00700313          	li	t1,7
    thread_dispatch();
    8000579c:	ffffc097          	auipc	ra,0xffffc
    800057a0:	bf0080e7          	jalr	-1040(ra) # 8000138c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800057a4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800057a8:	00004517          	auipc	a0,0x4
    800057ac:	d1850513          	addi	a0,a0,-744 # 800094c0 <CONSOLE_STATUS+0x4b0>
    800057b0:	fffff097          	auipc	ra,0xfffff
    800057b4:	5c4080e7          	jalr	1476(ra) # 80004d74 <_Z11printStringPKc>
    800057b8:	00000613          	li	a2,0
    800057bc:	00a00593          	li	a1,10
    800057c0:	0009051b          	sext.w	a0,s2
    800057c4:	fffff097          	auipc	ra,0xfffff
    800057c8:	760080e7          	jalr	1888(ra) # 80004f24 <_Z8printIntiii>
    800057cc:	00004517          	auipc	a0,0x4
    800057d0:	9c450513          	addi	a0,a0,-1596 # 80009190 <CONSOLE_STATUS+0x180>
    800057d4:	fffff097          	auipc	ra,0xfffff
    800057d8:	5a0080e7          	jalr	1440(ra) # 80004d74 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800057dc:	00c00513          	li	a0,12
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	d88080e7          	jalr	-632(ra) # 80005568 <_ZL9fibonaccim>
    800057e8:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800057ec:	00004517          	auipc	a0,0x4
    800057f0:	cdc50513          	addi	a0,a0,-804 # 800094c8 <CONSOLE_STATUS+0x4b8>
    800057f4:	fffff097          	auipc	ra,0xfffff
    800057f8:	580080e7          	jalr	1408(ra) # 80004d74 <_Z11printStringPKc>
    800057fc:	00000613          	li	a2,0
    80005800:	00a00593          	li	a1,10
    80005804:	0009051b          	sext.w	a0,s2
    80005808:	fffff097          	auipc	ra,0xfffff
    8000580c:	71c080e7          	jalr	1820(ra) # 80004f24 <_Z8printIntiii>
    80005810:	00004517          	auipc	a0,0x4
    80005814:	98050513          	addi	a0,a0,-1664 # 80009190 <CONSOLE_STATUS+0x180>
    80005818:	fffff097          	auipc	ra,0xfffff
    8000581c:	55c080e7          	jalr	1372(ra) # 80004d74 <_Z11printStringPKc>
    80005820:	0400006f          	j	80005860 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005824:	00004517          	auipc	a0,0x4
    80005828:	c8450513          	addi	a0,a0,-892 # 800094a8 <CONSOLE_STATUS+0x498>
    8000582c:	fffff097          	auipc	ra,0xfffff
    80005830:	548080e7          	jalr	1352(ra) # 80004d74 <_Z11printStringPKc>
    80005834:	00000613          	li	a2,0
    80005838:	00a00593          	li	a1,10
    8000583c:	00048513          	mv	a0,s1
    80005840:	fffff097          	auipc	ra,0xfffff
    80005844:	6e4080e7          	jalr	1764(ra) # 80004f24 <_Z8printIntiii>
    80005848:	00004517          	auipc	a0,0x4
    8000584c:	94850513          	addi	a0,a0,-1720 # 80009190 <CONSOLE_STATUS+0x180>
    80005850:	fffff097          	auipc	ra,0xfffff
    80005854:	524080e7          	jalr	1316(ra) # 80004d74 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005858:	0014849b          	addiw	s1,s1,1
    8000585c:	0ff4f493          	andi	s1,s1,255
    80005860:	00500793          	li	a5,5
    80005864:	fc97f0e3          	bgeu	a5,s1,80005824 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005868:	00004517          	auipc	a0,0x4
    8000586c:	c1850513          	addi	a0,a0,-1000 # 80009480 <CONSOLE_STATUS+0x470>
    80005870:	fffff097          	auipc	ra,0xfffff
    80005874:	504080e7          	jalr	1284(ra) # 80004d74 <_Z11printStringPKc>
    finishedC = true;
    80005878:	00100793          	li	a5,1
    8000587c:	00006717          	auipc	a4,0x6
    80005880:	0af70ba3          	sb	a5,183(a4) # 8000b933 <_ZL9finishedC>
    thread_dispatch();
    80005884:	ffffc097          	auipc	ra,0xffffc
    80005888:	b08080e7          	jalr	-1272(ra) # 8000138c <_Z15thread_dispatchv>
}
    8000588c:	01813083          	ld	ra,24(sp)
    80005890:	01013403          	ld	s0,16(sp)
    80005894:	00813483          	ld	s1,8(sp)
    80005898:	00013903          	ld	s2,0(sp)
    8000589c:	02010113          	addi	sp,sp,32
    800058a0:	00008067          	ret

00000000800058a4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800058a4:	fe010113          	addi	sp,sp,-32
    800058a8:	00113c23          	sd	ra,24(sp)
    800058ac:	00813823          	sd	s0,16(sp)
    800058b0:	00913423          	sd	s1,8(sp)
    800058b4:	01213023          	sd	s2,0(sp)
    800058b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800058bc:	00000913          	li	s2,0
    800058c0:	0400006f          	j	80005900 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800058c4:	ffffc097          	auipc	ra,0xffffc
    800058c8:	ac8080e7          	jalr	-1336(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800058cc:	00148493          	addi	s1,s1,1
    800058d0:	000027b7          	lui	a5,0x2
    800058d4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800058d8:	0097ee63          	bltu	a5,s1,800058f4 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800058dc:	00000713          	li	a4,0
    800058e0:	000077b7          	lui	a5,0x7
    800058e4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800058e8:	fce7eee3          	bltu	a5,a4,800058c4 <_ZL11workerBodyBPv+0x20>
    800058ec:	00170713          	addi	a4,a4,1
    800058f0:	ff1ff06f          	j	800058e0 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800058f4:	00a00793          	li	a5,10
    800058f8:	04f90663          	beq	s2,a5,80005944 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800058fc:	00190913          	addi	s2,s2,1
    80005900:	00f00793          	li	a5,15
    80005904:	0527e463          	bltu	a5,s2,8000594c <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80005908:	00004517          	auipc	a0,0x4
    8000590c:	b8850513          	addi	a0,a0,-1144 # 80009490 <CONSOLE_STATUS+0x480>
    80005910:	fffff097          	auipc	ra,0xfffff
    80005914:	464080e7          	jalr	1124(ra) # 80004d74 <_Z11printStringPKc>
    80005918:	00000613          	li	a2,0
    8000591c:	00a00593          	li	a1,10
    80005920:	0009051b          	sext.w	a0,s2
    80005924:	fffff097          	auipc	ra,0xfffff
    80005928:	600080e7          	jalr	1536(ra) # 80004f24 <_Z8printIntiii>
    8000592c:	00004517          	auipc	a0,0x4
    80005930:	86450513          	addi	a0,a0,-1948 # 80009190 <CONSOLE_STATUS+0x180>
    80005934:	fffff097          	auipc	ra,0xfffff
    80005938:	440080e7          	jalr	1088(ra) # 80004d74 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000593c:	00000493          	li	s1,0
    80005940:	f91ff06f          	j	800058d0 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80005944:	14102ff3          	csrr	t6,sepc
    80005948:	fb5ff06f          	j	800058fc <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    8000594c:	00004517          	auipc	a0,0x4
    80005950:	b4c50513          	addi	a0,a0,-1204 # 80009498 <CONSOLE_STATUS+0x488>
    80005954:	fffff097          	auipc	ra,0xfffff
    80005958:	420080e7          	jalr	1056(ra) # 80004d74 <_Z11printStringPKc>
    finishedB = true;
    8000595c:	00100793          	li	a5,1
    80005960:	00006717          	auipc	a4,0x6
    80005964:	fcf70a23          	sb	a5,-44(a4) # 8000b934 <_ZL9finishedB>
    thread_dispatch();
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	a24080e7          	jalr	-1500(ra) # 8000138c <_Z15thread_dispatchv>
}
    80005970:	01813083          	ld	ra,24(sp)
    80005974:	01013403          	ld	s0,16(sp)
    80005978:	00813483          	ld	s1,8(sp)
    8000597c:	00013903          	ld	s2,0(sp)
    80005980:	02010113          	addi	sp,sp,32
    80005984:	00008067          	ret

0000000080005988 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005988:	fe010113          	addi	sp,sp,-32
    8000598c:	00113c23          	sd	ra,24(sp)
    80005990:	00813823          	sd	s0,16(sp)
    80005994:	00913423          	sd	s1,8(sp)
    80005998:	01213023          	sd	s2,0(sp)
    8000599c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800059a0:	00000913          	li	s2,0
    800059a4:	0380006f          	j	800059dc <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800059a8:	ffffc097          	auipc	ra,0xffffc
    800059ac:	9e4080e7          	jalr	-1564(ra) # 8000138c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800059b0:	00148493          	addi	s1,s1,1
    800059b4:	000027b7          	lui	a5,0x2
    800059b8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800059bc:	0097ee63          	bltu	a5,s1,800059d8 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800059c0:	00000713          	li	a4,0
    800059c4:	000077b7          	lui	a5,0x7
    800059c8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800059cc:	fce7eee3          	bltu	a5,a4,800059a8 <_ZL11workerBodyAPv+0x20>
    800059d0:	00170713          	addi	a4,a4,1
    800059d4:	ff1ff06f          	j	800059c4 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800059d8:	00190913          	addi	s2,s2,1
    800059dc:	00900793          	li	a5,9
    800059e0:	0527e063          	bltu	a5,s2,80005a20 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800059e4:	00004517          	auipc	a0,0x4
    800059e8:	a9450513          	addi	a0,a0,-1388 # 80009478 <CONSOLE_STATUS+0x468>
    800059ec:	fffff097          	auipc	ra,0xfffff
    800059f0:	388080e7          	jalr	904(ra) # 80004d74 <_Z11printStringPKc>
    800059f4:	00000613          	li	a2,0
    800059f8:	00a00593          	li	a1,10
    800059fc:	0009051b          	sext.w	a0,s2
    80005a00:	fffff097          	auipc	ra,0xfffff
    80005a04:	524080e7          	jalr	1316(ra) # 80004f24 <_Z8printIntiii>
    80005a08:	00003517          	auipc	a0,0x3
    80005a0c:	78850513          	addi	a0,a0,1928 # 80009190 <CONSOLE_STATUS+0x180>
    80005a10:	fffff097          	auipc	ra,0xfffff
    80005a14:	364080e7          	jalr	868(ra) # 80004d74 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005a18:	00000493          	li	s1,0
    80005a1c:	f99ff06f          	j	800059b4 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005a20:	00004517          	auipc	a0,0x4
    80005a24:	a6050513          	addi	a0,a0,-1440 # 80009480 <CONSOLE_STATUS+0x470>
    80005a28:	fffff097          	auipc	ra,0xfffff
    80005a2c:	34c080e7          	jalr	844(ra) # 80004d74 <_Z11printStringPKc>
    finishedA = true;
    80005a30:	00100793          	li	a5,1
    80005a34:	00006717          	auipc	a4,0x6
    80005a38:	f0f700a3          	sb	a5,-255(a4) # 8000b935 <_ZL9finishedA>
}
    80005a3c:	01813083          	ld	ra,24(sp)
    80005a40:	01013403          	ld	s0,16(sp)
    80005a44:	00813483          	ld	s1,8(sp)
    80005a48:	00013903          	ld	s2,0(sp)
    80005a4c:	02010113          	addi	sp,sp,32
    80005a50:	00008067          	ret

0000000080005a54 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80005a54:	fd010113          	addi	sp,sp,-48
    80005a58:	02113423          	sd	ra,40(sp)
    80005a5c:	02813023          	sd	s0,32(sp)
    80005a60:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005a64:	00000613          	li	a2,0
    80005a68:	00000597          	auipc	a1,0x0
    80005a6c:	f2058593          	addi	a1,a1,-224 # 80005988 <_ZL11workerBodyAPv>
    80005a70:	fd040513          	addi	a0,s0,-48
    80005a74:	ffffc097          	auipc	ra,0xffffc
    80005a78:	84c080e7          	jalr	-1972(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadA created\n");
    80005a7c:	00004517          	auipc	a0,0x4
    80005a80:	a9450513          	addi	a0,a0,-1388 # 80009510 <CONSOLE_STATUS+0x500>
    80005a84:	fffff097          	auipc	ra,0xfffff
    80005a88:	2f0080e7          	jalr	752(ra) # 80004d74 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005a8c:	00000613          	li	a2,0
    80005a90:	00000597          	auipc	a1,0x0
    80005a94:	e1458593          	addi	a1,a1,-492 # 800058a4 <_ZL11workerBodyBPv>
    80005a98:	fd840513          	addi	a0,s0,-40
    80005a9c:	ffffc097          	auipc	ra,0xffffc
    80005aa0:	824080e7          	jalr	-2012(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadB created\n");
    80005aa4:	00004517          	auipc	a0,0x4
    80005aa8:	a8450513          	addi	a0,a0,-1404 # 80009528 <CONSOLE_STATUS+0x518>
    80005aac:	fffff097          	auipc	ra,0xfffff
    80005ab0:	2c8080e7          	jalr	712(ra) # 80004d74 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005ab4:	00000613          	li	a2,0
    80005ab8:	00000597          	auipc	a1,0x0
    80005abc:	c6c58593          	addi	a1,a1,-916 # 80005724 <_ZL11workerBodyCPv>
    80005ac0:	fe040513          	addi	a0,s0,-32
    80005ac4:	ffffb097          	auipc	ra,0xffffb
    80005ac8:	7fc080e7          	jalr	2044(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadC created\n");
    80005acc:	00004517          	auipc	a0,0x4
    80005ad0:	a7450513          	addi	a0,a0,-1420 # 80009540 <CONSOLE_STATUS+0x530>
    80005ad4:	fffff097          	auipc	ra,0xfffff
    80005ad8:	2a0080e7          	jalr	672(ra) # 80004d74 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005adc:	00000613          	li	a2,0
    80005ae0:	00000597          	auipc	a1,0x0
    80005ae4:	afc58593          	addi	a1,a1,-1284 # 800055dc <_ZL11workerBodyDPv>
    80005ae8:	fe840513          	addi	a0,s0,-24
    80005aec:	ffffb097          	auipc	ra,0xffffb
    80005af0:	7d4080e7          	jalr	2004(ra) # 800012c0 <_Z13thread_createPP3PCBPFvPvES2_>
    printString("ThreadD created\n");
    80005af4:	00004517          	auipc	a0,0x4
    80005af8:	a6450513          	addi	a0,a0,-1436 # 80009558 <CONSOLE_STATUS+0x548>
    80005afc:	fffff097          	auipc	ra,0xfffff
    80005b00:	278080e7          	jalr	632(ra) # 80004d74 <_Z11printStringPKc>
    80005b04:	00c0006f          	j	80005b10 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005b08:	ffffc097          	auipc	ra,0xffffc
    80005b0c:	884080e7          	jalr	-1916(ra) # 8000138c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005b10:	00006797          	auipc	a5,0x6
    80005b14:	e257c783          	lbu	a5,-475(a5) # 8000b935 <_ZL9finishedA>
    80005b18:	fe0788e3          	beqz	a5,80005b08 <_Z16System_Mode_testv+0xb4>
    80005b1c:	00006797          	auipc	a5,0x6
    80005b20:	e187c783          	lbu	a5,-488(a5) # 8000b934 <_ZL9finishedB>
    80005b24:	fe0782e3          	beqz	a5,80005b08 <_Z16System_Mode_testv+0xb4>
    80005b28:	00006797          	auipc	a5,0x6
    80005b2c:	e0b7c783          	lbu	a5,-501(a5) # 8000b933 <_ZL9finishedC>
    80005b30:	fc078ce3          	beqz	a5,80005b08 <_Z16System_Mode_testv+0xb4>
    80005b34:	00006797          	auipc	a5,0x6
    80005b38:	dfe7c783          	lbu	a5,-514(a5) # 8000b932 <_ZL9finishedD>
    80005b3c:	fc0786e3          	beqz	a5,80005b08 <_Z16System_Mode_testv+0xb4>
    }

}
    80005b40:	02813083          	ld	ra,40(sp)
    80005b44:	02013403          	ld	s0,32(sp)
    80005b48:	03010113          	addi	sp,sp,48
    80005b4c:	00008067          	ret

0000000080005b50 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005b50:	fe010113          	addi	sp,sp,-32
    80005b54:	00113c23          	sd	ra,24(sp)
    80005b58:	00813823          	sd	s0,16(sp)
    80005b5c:	00913423          	sd	s1,8(sp)
    80005b60:	01213023          	sd	s2,0(sp)
    80005b64:	02010413          	addi	s0,sp,32
    80005b68:	00050493          	mv	s1,a0
    80005b6c:	00058913          	mv	s2,a1
    80005b70:	0015879b          	addiw	a5,a1,1
    80005b74:	0007851b          	sext.w	a0,a5
    80005b78:	00f4a023          	sw	a5,0(s1)
    80005b7c:	0004a823          	sw	zero,16(s1)
    80005b80:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b84:	00251513          	slli	a0,a0,0x2
    80005b88:	ffffb097          	auipc	ra,0xffffb
    80005b8c:	604080e7          	jalr	1540(ra) # 8000118c <_Z9mem_allocm>
    80005b90:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005b94:	00000593          	li	a1,0
    80005b98:	02048513          	addi	a0,s1,32
    80005b9c:	ffffc097          	auipc	ra,0xffffc
    80005ba0:	828080e7          	jalr	-2008(ra) # 800013c4 <_Z8sem_openPP13BackSemaphorej>
    sem_open(&spaceAvailable, _cap);
    80005ba4:	00090593          	mv	a1,s2
    80005ba8:	01848513          	addi	a0,s1,24
    80005bac:	ffffc097          	auipc	ra,0xffffc
    80005bb0:	818080e7          	jalr	-2024(ra) # 800013c4 <_Z8sem_openPP13BackSemaphorej>
    sem_open(&mutexHead, 1);
    80005bb4:	00100593          	li	a1,1
    80005bb8:	02848513          	addi	a0,s1,40
    80005bbc:	ffffc097          	auipc	ra,0xffffc
    80005bc0:	808080e7          	jalr	-2040(ra) # 800013c4 <_Z8sem_openPP13BackSemaphorej>
    sem_open(&mutexTail, 1);
    80005bc4:	00100593          	li	a1,1
    80005bc8:	03048513          	addi	a0,s1,48
    80005bcc:	ffffb097          	auipc	ra,0xffffb
    80005bd0:	7f8080e7          	jalr	2040(ra) # 800013c4 <_Z8sem_openPP13BackSemaphorej>
}
    80005bd4:	01813083          	ld	ra,24(sp)
    80005bd8:	01013403          	ld	s0,16(sp)
    80005bdc:	00813483          	ld	s1,8(sp)
    80005be0:	00013903          	ld	s2,0(sp)
    80005be4:	02010113          	addi	sp,sp,32
    80005be8:	00008067          	ret

0000000080005bec <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005bec:	fe010113          	addi	sp,sp,-32
    80005bf0:	00113c23          	sd	ra,24(sp)
    80005bf4:	00813823          	sd	s0,16(sp)
    80005bf8:	00913423          	sd	s1,8(sp)
    80005bfc:	01213023          	sd	s2,0(sp)
    80005c00:	02010413          	addi	s0,sp,32
    80005c04:	00050493          	mv	s1,a0
    80005c08:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005c0c:	01853503          	ld	a0,24(a0)
    80005c10:	ffffc097          	auipc	ra,0xffffc
    80005c14:	838080e7          	jalr	-1992(ra) # 80001448 <_Z8sem_waitP13BackSemaphore>

    sem_wait(mutexTail);
    80005c18:	0304b503          	ld	a0,48(s1)
    80005c1c:	ffffc097          	auipc	ra,0xffffc
    80005c20:	82c080e7          	jalr	-2004(ra) # 80001448 <_Z8sem_waitP13BackSemaphore>
    buffer[tail] = val;
    80005c24:	0084b783          	ld	a5,8(s1)
    80005c28:	0144a703          	lw	a4,20(s1)
    80005c2c:	00271713          	slli	a4,a4,0x2
    80005c30:	00e787b3          	add	a5,a5,a4
    80005c34:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005c38:	0144a783          	lw	a5,20(s1)
    80005c3c:	0017879b          	addiw	a5,a5,1
    80005c40:	0004a703          	lw	a4,0(s1)
    80005c44:	02e7e7bb          	remw	a5,a5,a4
    80005c48:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005c4c:	0304b503          	ld	a0,48(s1)
    80005c50:	ffffc097          	auipc	ra,0xffffc
    80005c54:	838080e7          	jalr	-1992(ra) # 80001488 <_Z10sem_signalP13BackSemaphore>

    sem_signal(itemAvailable);
    80005c58:	0204b503          	ld	a0,32(s1)
    80005c5c:	ffffc097          	auipc	ra,0xffffc
    80005c60:	82c080e7          	jalr	-2004(ra) # 80001488 <_Z10sem_signalP13BackSemaphore>

}
    80005c64:	01813083          	ld	ra,24(sp)
    80005c68:	01013403          	ld	s0,16(sp)
    80005c6c:	00813483          	ld	s1,8(sp)
    80005c70:	00013903          	ld	s2,0(sp)
    80005c74:	02010113          	addi	sp,sp,32
    80005c78:	00008067          	ret

0000000080005c7c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005c7c:	fe010113          	addi	sp,sp,-32
    80005c80:	00113c23          	sd	ra,24(sp)
    80005c84:	00813823          	sd	s0,16(sp)
    80005c88:	00913423          	sd	s1,8(sp)
    80005c8c:	01213023          	sd	s2,0(sp)
    80005c90:	02010413          	addi	s0,sp,32
    80005c94:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005c98:	02053503          	ld	a0,32(a0)
    80005c9c:	ffffb097          	auipc	ra,0xffffb
    80005ca0:	7ac080e7          	jalr	1964(ra) # 80001448 <_Z8sem_waitP13BackSemaphore>

    sem_wait(mutexHead);
    80005ca4:	0284b503          	ld	a0,40(s1)
    80005ca8:	ffffb097          	auipc	ra,0xffffb
    80005cac:	7a0080e7          	jalr	1952(ra) # 80001448 <_Z8sem_waitP13BackSemaphore>

    int ret = buffer[head];
    80005cb0:	0084b703          	ld	a4,8(s1)
    80005cb4:	0104a783          	lw	a5,16(s1)
    80005cb8:	00279693          	slli	a3,a5,0x2
    80005cbc:	00d70733          	add	a4,a4,a3
    80005cc0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005cc4:	0017879b          	addiw	a5,a5,1
    80005cc8:	0004a703          	lw	a4,0(s1)
    80005ccc:	02e7e7bb          	remw	a5,a5,a4
    80005cd0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005cd4:	0284b503          	ld	a0,40(s1)
    80005cd8:	ffffb097          	auipc	ra,0xffffb
    80005cdc:	7b0080e7          	jalr	1968(ra) # 80001488 <_Z10sem_signalP13BackSemaphore>

    sem_signal(spaceAvailable);
    80005ce0:	0184b503          	ld	a0,24(s1)
    80005ce4:	ffffb097          	auipc	ra,0xffffb
    80005ce8:	7a4080e7          	jalr	1956(ra) # 80001488 <_Z10sem_signalP13BackSemaphore>

    return ret;
}
    80005cec:	00090513          	mv	a0,s2
    80005cf0:	01813083          	ld	ra,24(sp)
    80005cf4:	01013403          	ld	s0,16(sp)
    80005cf8:	00813483          	ld	s1,8(sp)
    80005cfc:	00013903          	ld	s2,0(sp)
    80005d00:	02010113          	addi	sp,sp,32
    80005d04:	00008067          	ret

0000000080005d08 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005d08:	fe010113          	addi	sp,sp,-32
    80005d0c:	00113c23          	sd	ra,24(sp)
    80005d10:	00813823          	sd	s0,16(sp)
    80005d14:	00913423          	sd	s1,8(sp)
    80005d18:	01213023          	sd	s2,0(sp)
    80005d1c:	02010413          	addi	s0,sp,32
    80005d20:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005d24:	02853503          	ld	a0,40(a0)
    80005d28:	ffffb097          	auipc	ra,0xffffb
    80005d2c:	720080e7          	jalr	1824(ra) # 80001448 <_Z8sem_waitP13BackSemaphore>
    sem_wait(mutexTail);
    80005d30:	0304b503          	ld	a0,48(s1)
    80005d34:	ffffb097          	auipc	ra,0xffffb
    80005d38:	714080e7          	jalr	1812(ra) # 80001448 <_Z8sem_waitP13BackSemaphore>

    if (tail >= head) {
    80005d3c:	0144a783          	lw	a5,20(s1)
    80005d40:	0104a903          	lw	s2,16(s1)
    80005d44:	0327ce63          	blt	a5,s2,80005d80 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005d48:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005d4c:	0304b503          	ld	a0,48(s1)
    80005d50:	ffffb097          	auipc	ra,0xffffb
    80005d54:	738080e7          	jalr	1848(ra) # 80001488 <_Z10sem_signalP13BackSemaphore>
    sem_signal(mutexHead);
    80005d58:	0284b503          	ld	a0,40(s1)
    80005d5c:	ffffb097          	auipc	ra,0xffffb
    80005d60:	72c080e7          	jalr	1836(ra) # 80001488 <_Z10sem_signalP13BackSemaphore>

    return ret;
}
    80005d64:	00090513          	mv	a0,s2
    80005d68:	01813083          	ld	ra,24(sp)
    80005d6c:	01013403          	ld	s0,16(sp)
    80005d70:	00813483          	ld	s1,8(sp)
    80005d74:	00013903          	ld	s2,0(sp)
    80005d78:	02010113          	addi	sp,sp,32
    80005d7c:	00008067          	ret
        ret = cap - head + tail;
    80005d80:	0004a703          	lw	a4,0(s1)
    80005d84:	4127093b          	subw	s2,a4,s2
    80005d88:	00f9093b          	addw	s2,s2,a5
    80005d8c:	fc1ff06f          	j	80005d4c <_ZN6Buffer6getCntEv+0x44>

0000000080005d90 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005d90:	fe010113          	addi	sp,sp,-32
    80005d94:	00113c23          	sd	ra,24(sp)
    80005d98:	00813823          	sd	s0,16(sp)
    80005d9c:	00913423          	sd	s1,8(sp)
    80005da0:	02010413          	addi	s0,sp,32
    80005da4:	00050493          	mv	s1,a0
    putc('\n');
    80005da8:	00a00513          	li	a0,10
    80005dac:	ffffb097          	auipc	ra,0xffffb
    80005db0:	75c080e7          	jalr	1884(ra) # 80001508 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005db4:	00003517          	auipc	a0,0x3
    80005db8:	7bc50513          	addi	a0,a0,1980 # 80009570 <CONSOLE_STATUS+0x560>
    80005dbc:	fffff097          	auipc	ra,0xfffff
    80005dc0:	fb8080e7          	jalr	-72(ra) # 80004d74 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005dc4:	00048513          	mv	a0,s1
    80005dc8:	00000097          	auipc	ra,0x0
    80005dcc:	f40080e7          	jalr	-192(ra) # 80005d08 <_ZN6Buffer6getCntEv>
    80005dd0:	02a05c63          	blez	a0,80005e08 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005dd4:	0084b783          	ld	a5,8(s1)
    80005dd8:	0104a703          	lw	a4,16(s1)
    80005ddc:	00271713          	slli	a4,a4,0x2
    80005de0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005de4:	0007c503          	lbu	a0,0(a5)
    80005de8:	ffffb097          	auipc	ra,0xffffb
    80005dec:	720080e7          	jalr	1824(ra) # 80001508 <_Z4putcc>
        head = (head + 1) % cap;
    80005df0:	0104a783          	lw	a5,16(s1)
    80005df4:	0017879b          	addiw	a5,a5,1
    80005df8:	0004a703          	lw	a4,0(s1)
    80005dfc:	02e7e7bb          	remw	a5,a5,a4
    80005e00:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005e04:	fc1ff06f          	j	80005dc4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005e08:	02100513          	li	a0,33
    80005e0c:	ffffb097          	auipc	ra,0xffffb
    80005e10:	6fc080e7          	jalr	1788(ra) # 80001508 <_Z4putcc>
    putc('\n');
    80005e14:	00a00513          	li	a0,10
    80005e18:	ffffb097          	auipc	ra,0xffffb
    80005e1c:	6f0080e7          	jalr	1776(ra) # 80001508 <_Z4putcc>
    mem_free(buffer);
    80005e20:	0084b503          	ld	a0,8(s1)
    80005e24:	ffffb097          	auipc	ra,0xffffb
    80005e28:	3a4080e7          	jalr	932(ra) # 800011c8 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005e2c:	0204b503          	ld	a0,32(s1)
    80005e30:	ffffb097          	auipc	ra,0xffffb
    80005e34:	5d8080e7          	jalr	1496(ra) # 80001408 <_Z9sem_closeP13BackSemaphore>
    sem_close(spaceAvailable);
    80005e38:	0184b503          	ld	a0,24(s1)
    80005e3c:	ffffb097          	auipc	ra,0xffffb
    80005e40:	5cc080e7          	jalr	1484(ra) # 80001408 <_Z9sem_closeP13BackSemaphore>
    sem_close(mutexTail);
    80005e44:	0304b503          	ld	a0,48(s1)
    80005e48:	ffffb097          	auipc	ra,0xffffb
    80005e4c:	5c0080e7          	jalr	1472(ra) # 80001408 <_Z9sem_closeP13BackSemaphore>
    sem_close(mutexHead);
    80005e50:	0284b503          	ld	a0,40(s1)
    80005e54:	ffffb097          	auipc	ra,0xffffb
    80005e58:	5b4080e7          	jalr	1460(ra) # 80001408 <_Z9sem_closeP13BackSemaphore>
}
    80005e5c:	01813083          	ld	ra,24(sp)
    80005e60:	01013403          	ld	s0,16(sp)
    80005e64:	00813483          	ld	s1,8(sp)
    80005e68:	02010113          	addi	sp,sp,32
    80005e6c:	00008067          	ret

0000000080005e70 <start>:
    80005e70:	ff010113          	addi	sp,sp,-16
    80005e74:	00813423          	sd	s0,8(sp)
    80005e78:	01010413          	addi	s0,sp,16
    80005e7c:	300027f3          	csrr	a5,mstatus
    80005e80:	ffffe737          	lui	a4,0xffffe
    80005e84:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1c5f>
    80005e88:	00e7f7b3          	and	a5,a5,a4
    80005e8c:	00001737          	lui	a4,0x1
    80005e90:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005e94:	00e7e7b3          	or	a5,a5,a4
    80005e98:	30079073          	csrw	mstatus,a5
    80005e9c:	00000797          	auipc	a5,0x0
    80005ea0:	16078793          	addi	a5,a5,352 # 80005ffc <system_main>
    80005ea4:	34179073          	csrw	mepc,a5
    80005ea8:	00000793          	li	a5,0
    80005eac:	18079073          	csrw	satp,a5
    80005eb0:	000107b7          	lui	a5,0x10
    80005eb4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005eb8:	30279073          	csrw	medeleg,a5
    80005ebc:	30379073          	csrw	mideleg,a5
    80005ec0:	104027f3          	csrr	a5,sie
    80005ec4:	2227e793          	ori	a5,a5,546
    80005ec8:	10479073          	csrw	sie,a5
    80005ecc:	fff00793          	li	a5,-1
    80005ed0:	00a7d793          	srli	a5,a5,0xa
    80005ed4:	3b079073          	csrw	pmpaddr0,a5
    80005ed8:	00f00793          	li	a5,15
    80005edc:	3a079073          	csrw	pmpcfg0,a5
    80005ee0:	f14027f3          	csrr	a5,mhartid
    80005ee4:	0200c737          	lui	a4,0x200c
    80005ee8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005eec:	0007869b          	sext.w	a3,a5
    80005ef0:	00269713          	slli	a4,a3,0x2
    80005ef4:	000f4637          	lui	a2,0xf4
    80005ef8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005efc:	00d70733          	add	a4,a4,a3
    80005f00:	0037979b          	slliw	a5,a5,0x3
    80005f04:	020046b7          	lui	a3,0x2004
    80005f08:	00d787b3          	add	a5,a5,a3
    80005f0c:	00c585b3          	add	a1,a1,a2
    80005f10:	00371693          	slli	a3,a4,0x3
    80005f14:	00006717          	auipc	a4,0x6
    80005f18:	a2c70713          	addi	a4,a4,-1492 # 8000b940 <timer_scratch>
    80005f1c:	00b7b023          	sd	a1,0(a5)
    80005f20:	00d70733          	add	a4,a4,a3
    80005f24:	00f73c23          	sd	a5,24(a4)
    80005f28:	02c73023          	sd	a2,32(a4)
    80005f2c:	34071073          	csrw	mscratch,a4
    80005f30:	00000797          	auipc	a5,0x0
    80005f34:	6e078793          	addi	a5,a5,1760 # 80006610 <timervec>
    80005f38:	30579073          	csrw	mtvec,a5
    80005f3c:	300027f3          	csrr	a5,mstatus
    80005f40:	0087e793          	ori	a5,a5,8
    80005f44:	30079073          	csrw	mstatus,a5
    80005f48:	304027f3          	csrr	a5,mie
    80005f4c:	0807e793          	ori	a5,a5,128
    80005f50:	30479073          	csrw	mie,a5
    80005f54:	f14027f3          	csrr	a5,mhartid
    80005f58:	0007879b          	sext.w	a5,a5
    80005f5c:	00078213          	mv	tp,a5
    80005f60:	30200073          	mret
    80005f64:	00813403          	ld	s0,8(sp)
    80005f68:	01010113          	addi	sp,sp,16
    80005f6c:	00008067          	ret

0000000080005f70 <timerinit>:
    80005f70:	ff010113          	addi	sp,sp,-16
    80005f74:	00813423          	sd	s0,8(sp)
    80005f78:	01010413          	addi	s0,sp,16
    80005f7c:	f14027f3          	csrr	a5,mhartid
    80005f80:	0200c737          	lui	a4,0x200c
    80005f84:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005f88:	0007869b          	sext.w	a3,a5
    80005f8c:	00269713          	slli	a4,a3,0x2
    80005f90:	000f4637          	lui	a2,0xf4
    80005f94:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005f98:	00d70733          	add	a4,a4,a3
    80005f9c:	0037979b          	slliw	a5,a5,0x3
    80005fa0:	020046b7          	lui	a3,0x2004
    80005fa4:	00d787b3          	add	a5,a5,a3
    80005fa8:	00c585b3          	add	a1,a1,a2
    80005fac:	00371693          	slli	a3,a4,0x3
    80005fb0:	00006717          	auipc	a4,0x6
    80005fb4:	99070713          	addi	a4,a4,-1648 # 8000b940 <timer_scratch>
    80005fb8:	00b7b023          	sd	a1,0(a5)
    80005fbc:	00d70733          	add	a4,a4,a3
    80005fc0:	00f73c23          	sd	a5,24(a4)
    80005fc4:	02c73023          	sd	a2,32(a4)
    80005fc8:	34071073          	csrw	mscratch,a4
    80005fcc:	00000797          	auipc	a5,0x0
    80005fd0:	64478793          	addi	a5,a5,1604 # 80006610 <timervec>
    80005fd4:	30579073          	csrw	mtvec,a5
    80005fd8:	300027f3          	csrr	a5,mstatus
    80005fdc:	0087e793          	ori	a5,a5,8
    80005fe0:	30079073          	csrw	mstatus,a5
    80005fe4:	304027f3          	csrr	a5,mie
    80005fe8:	0807e793          	ori	a5,a5,128
    80005fec:	30479073          	csrw	mie,a5
    80005ff0:	00813403          	ld	s0,8(sp)
    80005ff4:	01010113          	addi	sp,sp,16
    80005ff8:	00008067          	ret

0000000080005ffc <system_main>:
    80005ffc:	fe010113          	addi	sp,sp,-32
    80006000:	00813823          	sd	s0,16(sp)
    80006004:	00913423          	sd	s1,8(sp)
    80006008:	00113c23          	sd	ra,24(sp)
    8000600c:	02010413          	addi	s0,sp,32
    80006010:	00000097          	auipc	ra,0x0
    80006014:	0c4080e7          	jalr	196(ra) # 800060d4 <cpuid>
    80006018:	00006497          	auipc	s1,0x6
    8000601c:	84848493          	addi	s1,s1,-1976 # 8000b860 <started>
    80006020:	02050263          	beqz	a0,80006044 <system_main+0x48>
    80006024:	0004a783          	lw	a5,0(s1)
    80006028:	0007879b          	sext.w	a5,a5
    8000602c:	fe078ce3          	beqz	a5,80006024 <system_main+0x28>
    80006030:	0ff0000f          	fence
    80006034:	00003517          	auipc	a0,0x3
    80006038:	59450513          	addi	a0,a0,1428 # 800095c8 <CONSOLE_STATUS+0x5b8>
    8000603c:	00001097          	auipc	ra,0x1
    80006040:	a70080e7          	jalr	-1424(ra) # 80006aac <panic>
    80006044:	00001097          	auipc	ra,0x1
    80006048:	9c4080e7          	jalr	-1596(ra) # 80006a08 <consoleinit>
    8000604c:	00001097          	auipc	ra,0x1
    80006050:	150080e7          	jalr	336(ra) # 8000719c <printfinit>
    80006054:	00003517          	auipc	a0,0x3
    80006058:	13c50513          	addi	a0,a0,316 # 80009190 <CONSOLE_STATUS+0x180>
    8000605c:	00001097          	auipc	ra,0x1
    80006060:	aac080e7          	jalr	-1364(ra) # 80006b08 <__printf>
    80006064:	00003517          	auipc	a0,0x3
    80006068:	53450513          	addi	a0,a0,1332 # 80009598 <CONSOLE_STATUS+0x588>
    8000606c:	00001097          	auipc	ra,0x1
    80006070:	a9c080e7          	jalr	-1380(ra) # 80006b08 <__printf>
    80006074:	00003517          	auipc	a0,0x3
    80006078:	11c50513          	addi	a0,a0,284 # 80009190 <CONSOLE_STATUS+0x180>
    8000607c:	00001097          	auipc	ra,0x1
    80006080:	a8c080e7          	jalr	-1396(ra) # 80006b08 <__printf>
    80006084:	00001097          	auipc	ra,0x1
    80006088:	4a4080e7          	jalr	1188(ra) # 80007528 <kinit>
    8000608c:	00000097          	auipc	ra,0x0
    80006090:	148080e7          	jalr	328(ra) # 800061d4 <trapinit>
    80006094:	00000097          	auipc	ra,0x0
    80006098:	16c080e7          	jalr	364(ra) # 80006200 <trapinithart>
    8000609c:	00000097          	auipc	ra,0x0
    800060a0:	5b4080e7          	jalr	1460(ra) # 80006650 <plicinit>
    800060a4:	00000097          	auipc	ra,0x0
    800060a8:	5d4080e7          	jalr	1492(ra) # 80006678 <plicinithart>
    800060ac:	00000097          	auipc	ra,0x0
    800060b0:	078080e7          	jalr	120(ra) # 80006124 <userinit>
    800060b4:	0ff0000f          	fence
    800060b8:	00100793          	li	a5,1
    800060bc:	00003517          	auipc	a0,0x3
    800060c0:	4f450513          	addi	a0,a0,1268 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800060c4:	00f4a023          	sw	a5,0(s1)
    800060c8:	00001097          	auipc	ra,0x1
    800060cc:	a40080e7          	jalr	-1472(ra) # 80006b08 <__printf>
    800060d0:	0000006f          	j	800060d0 <system_main+0xd4>

00000000800060d4 <cpuid>:
    800060d4:	ff010113          	addi	sp,sp,-16
    800060d8:	00813423          	sd	s0,8(sp)
    800060dc:	01010413          	addi	s0,sp,16
    800060e0:	00020513          	mv	a0,tp
    800060e4:	00813403          	ld	s0,8(sp)
    800060e8:	0005051b          	sext.w	a0,a0
    800060ec:	01010113          	addi	sp,sp,16
    800060f0:	00008067          	ret

00000000800060f4 <mycpu>:
    800060f4:	ff010113          	addi	sp,sp,-16
    800060f8:	00813423          	sd	s0,8(sp)
    800060fc:	01010413          	addi	s0,sp,16
    80006100:	00020793          	mv	a5,tp
    80006104:	00813403          	ld	s0,8(sp)
    80006108:	0007879b          	sext.w	a5,a5
    8000610c:	00779793          	slli	a5,a5,0x7
    80006110:	00007517          	auipc	a0,0x7
    80006114:	86050513          	addi	a0,a0,-1952 # 8000c970 <cpus>
    80006118:	00f50533          	add	a0,a0,a5
    8000611c:	01010113          	addi	sp,sp,16
    80006120:	00008067          	ret

0000000080006124 <userinit>:
    80006124:	ff010113          	addi	sp,sp,-16
    80006128:	00813423          	sd	s0,8(sp)
    8000612c:	01010413          	addi	s0,sp,16
    80006130:	00813403          	ld	s0,8(sp)
    80006134:	01010113          	addi	sp,sp,16
    80006138:	ffffc317          	auipc	t1,0xffffc
    8000613c:	0f430067          	jr	244(t1) # 8000222c <main>

0000000080006140 <either_copyout>:
    80006140:	ff010113          	addi	sp,sp,-16
    80006144:	00813023          	sd	s0,0(sp)
    80006148:	00113423          	sd	ra,8(sp)
    8000614c:	01010413          	addi	s0,sp,16
    80006150:	02051663          	bnez	a0,8000617c <either_copyout+0x3c>
    80006154:	00058513          	mv	a0,a1
    80006158:	00060593          	mv	a1,a2
    8000615c:	0006861b          	sext.w	a2,a3
    80006160:	00002097          	auipc	ra,0x2
    80006164:	c54080e7          	jalr	-940(ra) # 80007db4 <__memmove>
    80006168:	00813083          	ld	ra,8(sp)
    8000616c:	00013403          	ld	s0,0(sp)
    80006170:	00000513          	li	a0,0
    80006174:	01010113          	addi	sp,sp,16
    80006178:	00008067          	ret
    8000617c:	00003517          	auipc	a0,0x3
    80006180:	47450513          	addi	a0,a0,1140 # 800095f0 <CONSOLE_STATUS+0x5e0>
    80006184:	00001097          	auipc	ra,0x1
    80006188:	928080e7          	jalr	-1752(ra) # 80006aac <panic>

000000008000618c <either_copyin>:
    8000618c:	ff010113          	addi	sp,sp,-16
    80006190:	00813023          	sd	s0,0(sp)
    80006194:	00113423          	sd	ra,8(sp)
    80006198:	01010413          	addi	s0,sp,16
    8000619c:	02059463          	bnez	a1,800061c4 <either_copyin+0x38>
    800061a0:	00060593          	mv	a1,a2
    800061a4:	0006861b          	sext.w	a2,a3
    800061a8:	00002097          	auipc	ra,0x2
    800061ac:	c0c080e7          	jalr	-1012(ra) # 80007db4 <__memmove>
    800061b0:	00813083          	ld	ra,8(sp)
    800061b4:	00013403          	ld	s0,0(sp)
    800061b8:	00000513          	li	a0,0
    800061bc:	01010113          	addi	sp,sp,16
    800061c0:	00008067          	ret
    800061c4:	00003517          	auipc	a0,0x3
    800061c8:	45450513          	addi	a0,a0,1108 # 80009618 <CONSOLE_STATUS+0x608>
    800061cc:	00001097          	auipc	ra,0x1
    800061d0:	8e0080e7          	jalr	-1824(ra) # 80006aac <panic>

00000000800061d4 <trapinit>:
    800061d4:	ff010113          	addi	sp,sp,-16
    800061d8:	00813423          	sd	s0,8(sp)
    800061dc:	01010413          	addi	s0,sp,16
    800061e0:	00813403          	ld	s0,8(sp)
    800061e4:	00003597          	auipc	a1,0x3
    800061e8:	45c58593          	addi	a1,a1,1116 # 80009640 <CONSOLE_STATUS+0x630>
    800061ec:	00007517          	auipc	a0,0x7
    800061f0:	80450513          	addi	a0,a0,-2044 # 8000c9f0 <tickslock>
    800061f4:	01010113          	addi	sp,sp,16
    800061f8:	00001317          	auipc	t1,0x1
    800061fc:	5c030067          	jr	1472(t1) # 800077b8 <initlock>

0000000080006200 <trapinithart>:
    80006200:	ff010113          	addi	sp,sp,-16
    80006204:	00813423          	sd	s0,8(sp)
    80006208:	01010413          	addi	s0,sp,16
    8000620c:	00000797          	auipc	a5,0x0
    80006210:	2f478793          	addi	a5,a5,756 # 80006500 <kernelvec>
    80006214:	10579073          	csrw	stvec,a5
    80006218:	00813403          	ld	s0,8(sp)
    8000621c:	01010113          	addi	sp,sp,16
    80006220:	00008067          	ret

0000000080006224 <usertrap>:
    80006224:	ff010113          	addi	sp,sp,-16
    80006228:	00813423          	sd	s0,8(sp)
    8000622c:	01010413          	addi	s0,sp,16
    80006230:	00813403          	ld	s0,8(sp)
    80006234:	01010113          	addi	sp,sp,16
    80006238:	00008067          	ret

000000008000623c <usertrapret>:
    8000623c:	ff010113          	addi	sp,sp,-16
    80006240:	00813423          	sd	s0,8(sp)
    80006244:	01010413          	addi	s0,sp,16
    80006248:	00813403          	ld	s0,8(sp)
    8000624c:	01010113          	addi	sp,sp,16
    80006250:	00008067          	ret

0000000080006254 <kerneltrap>:
    80006254:	fe010113          	addi	sp,sp,-32
    80006258:	00813823          	sd	s0,16(sp)
    8000625c:	00113c23          	sd	ra,24(sp)
    80006260:	00913423          	sd	s1,8(sp)
    80006264:	02010413          	addi	s0,sp,32
    80006268:	142025f3          	csrr	a1,scause
    8000626c:	100027f3          	csrr	a5,sstatus
    80006270:	0027f793          	andi	a5,a5,2
    80006274:	10079c63          	bnez	a5,8000638c <kerneltrap+0x138>
    80006278:	142027f3          	csrr	a5,scause
    8000627c:	0207ce63          	bltz	a5,800062b8 <kerneltrap+0x64>
    80006280:	00003517          	auipc	a0,0x3
    80006284:	40850513          	addi	a0,a0,1032 # 80009688 <CONSOLE_STATUS+0x678>
    80006288:	00001097          	auipc	ra,0x1
    8000628c:	880080e7          	jalr	-1920(ra) # 80006b08 <__printf>
    80006290:	141025f3          	csrr	a1,sepc
    80006294:	14302673          	csrr	a2,stval
    80006298:	00003517          	auipc	a0,0x3
    8000629c:	40050513          	addi	a0,a0,1024 # 80009698 <CONSOLE_STATUS+0x688>
    800062a0:	00001097          	auipc	ra,0x1
    800062a4:	868080e7          	jalr	-1944(ra) # 80006b08 <__printf>
    800062a8:	00003517          	auipc	a0,0x3
    800062ac:	40850513          	addi	a0,a0,1032 # 800096b0 <CONSOLE_STATUS+0x6a0>
    800062b0:	00000097          	auipc	ra,0x0
    800062b4:	7fc080e7          	jalr	2044(ra) # 80006aac <panic>
    800062b8:	0ff7f713          	andi	a4,a5,255
    800062bc:	00900693          	li	a3,9
    800062c0:	04d70063          	beq	a4,a3,80006300 <kerneltrap+0xac>
    800062c4:	fff00713          	li	a4,-1
    800062c8:	03f71713          	slli	a4,a4,0x3f
    800062cc:	00170713          	addi	a4,a4,1
    800062d0:	fae798e3          	bne	a5,a4,80006280 <kerneltrap+0x2c>
    800062d4:	00000097          	auipc	ra,0x0
    800062d8:	e00080e7          	jalr	-512(ra) # 800060d4 <cpuid>
    800062dc:	06050663          	beqz	a0,80006348 <kerneltrap+0xf4>
    800062e0:	144027f3          	csrr	a5,sip
    800062e4:	ffd7f793          	andi	a5,a5,-3
    800062e8:	14479073          	csrw	sip,a5
    800062ec:	01813083          	ld	ra,24(sp)
    800062f0:	01013403          	ld	s0,16(sp)
    800062f4:	00813483          	ld	s1,8(sp)
    800062f8:	02010113          	addi	sp,sp,32
    800062fc:	00008067          	ret
    80006300:	00000097          	auipc	ra,0x0
    80006304:	3c4080e7          	jalr	964(ra) # 800066c4 <plic_claim>
    80006308:	00a00793          	li	a5,10
    8000630c:	00050493          	mv	s1,a0
    80006310:	06f50863          	beq	a0,a5,80006380 <kerneltrap+0x12c>
    80006314:	fc050ce3          	beqz	a0,800062ec <kerneltrap+0x98>
    80006318:	00050593          	mv	a1,a0
    8000631c:	00003517          	auipc	a0,0x3
    80006320:	34c50513          	addi	a0,a0,844 # 80009668 <CONSOLE_STATUS+0x658>
    80006324:	00000097          	auipc	ra,0x0
    80006328:	7e4080e7          	jalr	2020(ra) # 80006b08 <__printf>
    8000632c:	01013403          	ld	s0,16(sp)
    80006330:	01813083          	ld	ra,24(sp)
    80006334:	00048513          	mv	a0,s1
    80006338:	00813483          	ld	s1,8(sp)
    8000633c:	02010113          	addi	sp,sp,32
    80006340:	00000317          	auipc	t1,0x0
    80006344:	3bc30067          	jr	956(t1) # 800066fc <plic_complete>
    80006348:	00006517          	auipc	a0,0x6
    8000634c:	6a850513          	addi	a0,a0,1704 # 8000c9f0 <tickslock>
    80006350:	00001097          	auipc	ra,0x1
    80006354:	48c080e7          	jalr	1164(ra) # 800077dc <acquire>
    80006358:	00005717          	auipc	a4,0x5
    8000635c:	50c70713          	addi	a4,a4,1292 # 8000b864 <ticks>
    80006360:	00072783          	lw	a5,0(a4)
    80006364:	00006517          	auipc	a0,0x6
    80006368:	68c50513          	addi	a0,a0,1676 # 8000c9f0 <tickslock>
    8000636c:	0017879b          	addiw	a5,a5,1
    80006370:	00f72023          	sw	a5,0(a4)
    80006374:	00001097          	auipc	ra,0x1
    80006378:	534080e7          	jalr	1332(ra) # 800078a8 <release>
    8000637c:	f65ff06f          	j	800062e0 <kerneltrap+0x8c>
    80006380:	00001097          	auipc	ra,0x1
    80006384:	090080e7          	jalr	144(ra) # 80007410 <uartintr>
    80006388:	fa5ff06f          	j	8000632c <kerneltrap+0xd8>
    8000638c:	00003517          	auipc	a0,0x3
    80006390:	2bc50513          	addi	a0,a0,700 # 80009648 <CONSOLE_STATUS+0x638>
    80006394:	00000097          	auipc	ra,0x0
    80006398:	718080e7          	jalr	1816(ra) # 80006aac <panic>

000000008000639c <clockintr>:
    8000639c:	fe010113          	addi	sp,sp,-32
    800063a0:	00813823          	sd	s0,16(sp)
    800063a4:	00913423          	sd	s1,8(sp)
    800063a8:	00113c23          	sd	ra,24(sp)
    800063ac:	02010413          	addi	s0,sp,32
    800063b0:	00006497          	auipc	s1,0x6
    800063b4:	64048493          	addi	s1,s1,1600 # 8000c9f0 <tickslock>
    800063b8:	00048513          	mv	a0,s1
    800063bc:	00001097          	auipc	ra,0x1
    800063c0:	420080e7          	jalr	1056(ra) # 800077dc <acquire>
    800063c4:	00005717          	auipc	a4,0x5
    800063c8:	4a070713          	addi	a4,a4,1184 # 8000b864 <ticks>
    800063cc:	00072783          	lw	a5,0(a4)
    800063d0:	01013403          	ld	s0,16(sp)
    800063d4:	01813083          	ld	ra,24(sp)
    800063d8:	00048513          	mv	a0,s1
    800063dc:	0017879b          	addiw	a5,a5,1
    800063e0:	00813483          	ld	s1,8(sp)
    800063e4:	00f72023          	sw	a5,0(a4)
    800063e8:	02010113          	addi	sp,sp,32
    800063ec:	00001317          	auipc	t1,0x1
    800063f0:	4bc30067          	jr	1212(t1) # 800078a8 <release>

00000000800063f4 <devintr>:
    800063f4:	142027f3          	csrr	a5,scause
    800063f8:	00000513          	li	a0,0
    800063fc:	0007c463          	bltz	a5,80006404 <devintr+0x10>
    80006400:	00008067          	ret
    80006404:	fe010113          	addi	sp,sp,-32
    80006408:	00813823          	sd	s0,16(sp)
    8000640c:	00113c23          	sd	ra,24(sp)
    80006410:	00913423          	sd	s1,8(sp)
    80006414:	02010413          	addi	s0,sp,32
    80006418:	0ff7f713          	andi	a4,a5,255
    8000641c:	00900693          	li	a3,9
    80006420:	04d70c63          	beq	a4,a3,80006478 <devintr+0x84>
    80006424:	fff00713          	li	a4,-1
    80006428:	03f71713          	slli	a4,a4,0x3f
    8000642c:	00170713          	addi	a4,a4,1
    80006430:	00e78c63          	beq	a5,a4,80006448 <devintr+0x54>
    80006434:	01813083          	ld	ra,24(sp)
    80006438:	01013403          	ld	s0,16(sp)
    8000643c:	00813483          	ld	s1,8(sp)
    80006440:	02010113          	addi	sp,sp,32
    80006444:	00008067          	ret
    80006448:	00000097          	auipc	ra,0x0
    8000644c:	c8c080e7          	jalr	-884(ra) # 800060d4 <cpuid>
    80006450:	06050663          	beqz	a0,800064bc <devintr+0xc8>
    80006454:	144027f3          	csrr	a5,sip
    80006458:	ffd7f793          	andi	a5,a5,-3
    8000645c:	14479073          	csrw	sip,a5
    80006460:	01813083          	ld	ra,24(sp)
    80006464:	01013403          	ld	s0,16(sp)
    80006468:	00813483          	ld	s1,8(sp)
    8000646c:	00200513          	li	a0,2
    80006470:	02010113          	addi	sp,sp,32
    80006474:	00008067          	ret
    80006478:	00000097          	auipc	ra,0x0
    8000647c:	24c080e7          	jalr	588(ra) # 800066c4 <plic_claim>
    80006480:	00a00793          	li	a5,10
    80006484:	00050493          	mv	s1,a0
    80006488:	06f50663          	beq	a0,a5,800064f4 <devintr+0x100>
    8000648c:	00100513          	li	a0,1
    80006490:	fa0482e3          	beqz	s1,80006434 <devintr+0x40>
    80006494:	00048593          	mv	a1,s1
    80006498:	00003517          	auipc	a0,0x3
    8000649c:	1d050513          	addi	a0,a0,464 # 80009668 <CONSOLE_STATUS+0x658>
    800064a0:	00000097          	auipc	ra,0x0
    800064a4:	668080e7          	jalr	1640(ra) # 80006b08 <__printf>
    800064a8:	00048513          	mv	a0,s1
    800064ac:	00000097          	auipc	ra,0x0
    800064b0:	250080e7          	jalr	592(ra) # 800066fc <plic_complete>
    800064b4:	00100513          	li	a0,1
    800064b8:	f7dff06f          	j	80006434 <devintr+0x40>
    800064bc:	00006517          	auipc	a0,0x6
    800064c0:	53450513          	addi	a0,a0,1332 # 8000c9f0 <tickslock>
    800064c4:	00001097          	auipc	ra,0x1
    800064c8:	318080e7          	jalr	792(ra) # 800077dc <acquire>
    800064cc:	00005717          	auipc	a4,0x5
    800064d0:	39870713          	addi	a4,a4,920 # 8000b864 <ticks>
    800064d4:	00072783          	lw	a5,0(a4)
    800064d8:	00006517          	auipc	a0,0x6
    800064dc:	51850513          	addi	a0,a0,1304 # 8000c9f0 <tickslock>
    800064e0:	0017879b          	addiw	a5,a5,1
    800064e4:	00f72023          	sw	a5,0(a4)
    800064e8:	00001097          	auipc	ra,0x1
    800064ec:	3c0080e7          	jalr	960(ra) # 800078a8 <release>
    800064f0:	f65ff06f          	j	80006454 <devintr+0x60>
    800064f4:	00001097          	auipc	ra,0x1
    800064f8:	f1c080e7          	jalr	-228(ra) # 80007410 <uartintr>
    800064fc:	fadff06f          	j	800064a8 <devintr+0xb4>

0000000080006500 <kernelvec>:
    80006500:	f0010113          	addi	sp,sp,-256
    80006504:	00113023          	sd	ra,0(sp)
    80006508:	00213423          	sd	sp,8(sp)
    8000650c:	00313823          	sd	gp,16(sp)
    80006510:	00413c23          	sd	tp,24(sp)
    80006514:	02513023          	sd	t0,32(sp)
    80006518:	02613423          	sd	t1,40(sp)
    8000651c:	02713823          	sd	t2,48(sp)
    80006520:	02813c23          	sd	s0,56(sp)
    80006524:	04913023          	sd	s1,64(sp)
    80006528:	04a13423          	sd	a0,72(sp)
    8000652c:	04b13823          	sd	a1,80(sp)
    80006530:	04c13c23          	sd	a2,88(sp)
    80006534:	06d13023          	sd	a3,96(sp)
    80006538:	06e13423          	sd	a4,104(sp)
    8000653c:	06f13823          	sd	a5,112(sp)
    80006540:	07013c23          	sd	a6,120(sp)
    80006544:	09113023          	sd	a7,128(sp)
    80006548:	09213423          	sd	s2,136(sp)
    8000654c:	09313823          	sd	s3,144(sp)
    80006550:	09413c23          	sd	s4,152(sp)
    80006554:	0b513023          	sd	s5,160(sp)
    80006558:	0b613423          	sd	s6,168(sp)
    8000655c:	0b713823          	sd	s7,176(sp)
    80006560:	0b813c23          	sd	s8,184(sp)
    80006564:	0d913023          	sd	s9,192(sp)
    80006568:	0da13423          	sd	s10,200(sp)
    8000656c:	0db13823          	sd	s11,208(sp)
    80006570:	0dc13c23          	sd	t3,216(sp)
    80006574:	0fd13023          	sd	t4,224(sp)
    80006578:	0fe13423          	sd	t5,232(sp)
    8000657c:	0ff13823          	sd	t6,240(sp)
    80006580:	cd5ff0ef          	jal	ra,80006254 <kerneltrap>
    80006584:	00013083          	ld	ra,0(sp)
    80006588:	00813103          	ld	sp,8(sp)
    8000658c:	01013183          	ld	gp,16(sp)
    80006590:	02013283          	ld	t0,32(sp)
    80006594:	02813303          	ld	t1,40(sp)
    80006598:	03013383          	ld	t2,48(sp)
    8000659c:	03813403          	ld	s0,56(sp)
    800065a0:	04013483          	ld	s1,64(sp)
    800065a4:	04813503          	ld	a0,72(sp)
    800065a8:	05013583          	ld	a1,80(sp)
    800065ac:	05813603          	ld	a2,88(sp)
    800065b0:	06013683          	ld	a3,96(sp)
    800065b4:	06813703          	ld	a4,104(sp)
    800065b8:	07013783          	ld	a5,112(sp)
    800065bc:	07813803          	ld	a6,120(sp)
    800065c0:	08013883          	ld	a7,128(sp)
    800065c4:	08813903          	ld	s2,136(sp)
    800065c8:	09013983          	ld	s3,144(sp)
    800065cc:	09813a03          	ld	s4,152(sp)
    800065d0:	0a013a83          	ld	s5,160(sp)
    800065d4:	0a813b03          	ld	s6,168(sp)
    800065d8:	0b013b83          	ld	s7,176(sp)
    800065dc:	0b813c03          	ld	s8,184(sp)
    800065e0:	0c013c83          	ld	s9,192(sp)
    800065e4:	0c813d03          	ld	s10,200(sp)
    800065e8:	0d013d83          	ld	s11,208(sp)
    800065ec:	0d813e03          	ld	t3,216(sp)
    800065f0:	0e013e83          	ld	t4,224(sp)
    800065f4:	0e813f03          	ld	t5,232(sp)
    800065f8:	0f013f83          	ld	t6,240(sp)
    800065fc:	10010113          	addi	sp,sp,256
    80006600:	10200073          	sret
    80006604:	00000013          	nop
    80006608:	00000013          	nop
    8000660c:	00000013          	nop

0000000080006610 <timervec>:
    80006610:	34051573          	csrrw	a0,mscratch,a0
    80006614:	00b53023          	sd	a1,0(a0)
    80006618:	00c53423          	sd	a2,8(a0)
    8000661c:	00d53823          	sd	a3,16(a0)
    80006620:	01853583          	ld	a1,24(a0)
    80006624:	02053603          	ld	a2,32(a0)
    80006628:	0005b683          	ld	a3,0(a1)
    8000662c:	00c686b3          	add	a3,a3,a2
    80006630:	00d5b023          	sd	a3,0(a1)
    80006634:	00200593          	li	a1,2
    80006638:	14459073          	csrw	sip,a1
    8000663c:	01053683          	ld	a3,16(a0)
    80006640:	00853603          	ld	a2,8(a0)
    80006644:	00053583          	ld	a1,0(a0)
    80006648:	34051573          	csrrw	a0,mscratch,a0
    8000664c:	30200073          	mret

0000000080006650 <plicinit>:
    80006650:	ff010113          	addi	sp,sp,-16
    80006654:	00813423          	sd	s0,8(sp)
    80006658:	01010413          	addi	s0,sp,16
    8000665c:	00813403          	ld	s0,8(sp)
    80006660:	0c0007b7          	lui	a5,0xc000
    80006664:	00100713          	li	a4,1
    80006668:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000666c:	00e7a223          	sw	a4,4(a5)
    80006670:	01010113          	addi	sp,sp,16
    80006674:	00008067          	ret

0000000080006678 <plicinithart>:
    80006678:	ff010113          	addi	sp,sp,-16
    8000667c:	00813023          	sd	s0,0(sp)
    80006680:	00113423          	sd	ra,8(sp)
    80006684:	01010413          	addi	s0,sp,16
    80006688:	00000097          	auipc	ra,0x0
    8000668c:	a4c080e7          	jalr	-1460(ra) # 800060d4 <cpuid>
    80006690:	0085171b          	slliw	a4,a0,0x8
    80006694:	0c0027b7          	lui	a5,0xc002
    80006698:	00e787b3          	add	a5,a5,a4
    8000669c:	40200713          	li	a4,1026
    800066a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800066a4:	00813083          	ld	ra,8(sp)
    800066a8:	00013403          	ld	s0,0(sp)
    800066ac:	00d5151b          	slliw	a0,a0,0xd
    800066b0:	0c2017b7          	lui	a5,0xc201
    800066b4:	00a78533          	add	a0,a5,a0
    800066b8:	00052023          	sw	zero,0(a0)
    800066bc:	01010113          	addi	sp,sp,16
    800066c0:	00008067          	ret

00000000800066c4 <plic_claim>:
    800066c4:	ff010113          	addi	sp,sp,-16
    800066c8:	00813023          	sd	s0,0(sp)
    800066cc:	00113423          	sd	ra,8(sp)
    800066d0:	01010413          	addi	s0,sp,16
    800066d4:	00000097          	auipc	ra,0x0
    800066d8:	a00080e7          	jalr	-1536(ra) # 800060d4 <cpuid>
    800066dc:	00813083          	ld	ra,8(sp)
    800066e0:	00013403          	ld	s0,0(sp)
    800066e4:	00d5151b          	slliw	a0,a0,0xd
    800066e8:	0c2017b7          	lui	a5,0xc201
    800066ec:	00a78533          	add	a0,a5,a0
    800066f0:	00452503          	lw	a0,4(a0)
    800066f4:	01010113          	addi	sp,sp,16
    800066f8:	00008067          	ret

00000000800066fc <plic_complete>:
    800066fc:	fe010113          	addi	sp,sp,-32
    80006700:	00813823          	sd	s0,16(sp)
    80006704:	00913423          	sd	s1,8(sp)
    80006708:	00113c23          	sd	ra,24(sp)
    8000670c:	02010413          	addi	s0,sp,32
    80006710:	00050493          	mv	s1,a0
    80006714:	00000097          	auipc	ra,0x0
    80006718:	9c0080e7          	jalr	-1600(ra) # 800060d4 <cpuid>
    8000671c:	01813083          	ld	ra,24(sp)
    80006720:	01013403          	ld	s0,16(sp)
    80006724:	00d5179b          	slliw	a5,a0,0xd
    80006728:	0c201737          	lui	a4,0xc201
    8000672c:	00f707b3          	add	a5,a4,a5
    80006730:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006734:	00813483          	ld	s1,8(sp)
    80006738:	02010113          	addi	sp,sp,32
    8000673c:	00008067          	ret

0000000080006740 <consolewrite>:
    80006740:	fb010113          	addi	sp,sp,-80
    80006744:	04813023          	sd	s0,64(sp)
    80006748:	04113423          	sd	ra,72(sp)
    8000674c:	02913c23          	sd	s1,56(sp)
    80006750:	03213823          	sd	s2,48(sp)
    80006754:	03313423          	sd	s3,40(sp)
    80006758:	03413023          	sd	s4,32(sp)
    8000675c:	01513c23          	sd	s5,24(sp)
    80006760:	05010413          	addi	s0,sp,80
    80006764:	06c05c63          	blez	a2,800067dc <consolewrite+0x9c>
    80006768:	00060993          	mv	s3,a2
    8000676c:	00050a13          	mv	s4,a0
    80006770:	00058493          	mv	s1,a1
    80006774:	00000913          	li	s2,0
    80006778:	fff00a93          	li	s5,-1
    8000677c:	01c0006f          	j	80006798 <consolewrite+0x58>
    80006780:	fbf44503          	lbu	a0,-65(s0)
    80006784:	0019091b          	addiw	s2,s2,1
    80006788:	00148493          	addi	s1,s1,1
    8000678c:	00001097          	auipc	ra,0x1
    80006790:	a9c080e7          	jalr	-1380(ra) # 80007228 <uartputc>
    80006794:	03298063          	beq	s3,s2,800067b4 <consolewrite+0x74>
    80006798:	00048613          	mv	a2,s1
    8000679c:	00100693          	li	a3,1
    800067a0:	000a0593          	mv	a1,s4
    800067a4:	fbf40513          	addi	a0,s0,-65
    800067a8:	00000097          	auipc	ra,0x0
    800067ac:	9e4080e7          	jalr	-1564(ra) # 8000618c <either_copyin>
    800067b0:	fd5518e3          	bne	a0,s5,80006780 <consolewrite+0x40>
    800067b4:	04813083          	ld	ra,72(sp)
    800067b8:	04013403          	ld	s0,64(sp)
    800067bc:	03813483          	ld	s1,56(sp)
    800067c0:	02813983          	ld	s3,40(sp)
    800067c4:	02013a03          	ld	s4,32(sp)
    800067c8:	01813a83          	ld	s5,24(sp)
    800067cc:	00090513          	mv	a0,s2
    800067d0:	03013903          	ld	s2,48(sp)
    800067d4:	05010113          	addi	sp,sp,80
    800067d8:	00008067          	ret
    800067dc:	00000913          	li	s2,0
    800067e0:	fd5ff06f          	j	800067b4 <consolewrite+0x74>

00000000800067e4 <consoleread>:
    800067e4:	f9010113          	addi	sp,sp,-112
    800067e8:	06813023          	sd	s0,96(sp)
    800067ec:	04913c23          	sd	s1,88(sp)
    800067f0:	05213823          	sd	s2,80(sp)
    800067f4:	05313423          	sd	s3,72(sp)
    800067f8:	05413023          	sd	s4,64(sp)
    800067fc:	03513c23          	sd	s5,56(sp)
    80006800:	03613823          	sd	s6,48(sp)
    80006804:	03713423          	sd	s7,40(sp)
    80006808:	03813023          	sd	s8,32(sp)
    8000680c:	06113423          	sd	ra,104(sp)
    80006810:	01913c23          	sd	s9,24(sp)
    80006814:	07010413          	addi	s0,sp,112
    80006818:	00060b93          	mv	s7,a2
    8000681c:	00050913          	mv	s2,a0
    80006820:	00058c13          	mv	s8,a1
    80006824:	00060b1b          	sext.w	s6,a2
    80006828:	00006497          	auipc	s1,0x6
    8000682c:	1f048493          	addi	s1,s1,496 # 8000ca18 <cons>
    80006830:	00400993          	li	s3,4
    80006834:	fff00a13          	li	s4,-1
    80006838:	00a00a93          	li	s5,10
    8000683c:	05705e63          	blez	s7,80006898 <consoleread+0xb4>
    80006840:	09c4a703          	lw	a4,156(s1)
    80006844:	0984a783          	lw	a5,152(s1)
    80006848:	0007071b          	sext.w	a4,a4
    8000684c:	08e78463          	beq	a5,a4,800068d4 <consoleread+0xf0>
    80006850:	07f7f713          	andi	a4,a5,127
    80006854:	00e48733          	add	a4,s1,a4
    80006858:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000685c:	0017869b          	addiw	a3,a5,1
    80006860:	08d4ac23          	sw	a3,152(s1)
    80006864:	00070c9b          	sext.w	s9,a4
    80006868:	0b370663          	beq	a4,s3,80006914 <consoleread+0x130>
    8000686c:	00100693          	li	a3,1
    80006870:	f9f40613          	addi	a2,s0,-97
    80006874:	000c0593          	mv	a1,s8
    80006878:	00090513          	mv	a0,s2
    8000687c:	f8e40fa3          	sb	a4,-97(s0)
    80006880:	00000097          	auipc	ra,0x0
    80006884:	8c0080e7          	jalr	-1856(ra) # 80006140 <either_copyout>
    80006888:	01450863          	beq	a0,s4,80006898 <consoleread+0xb4>
    8000688c:	001c0c13          	addi	s8,s8,1
    80006890:	fffb8b9b          	addiw	s7,s7,-1
    80006894:	fb5c94e3          	bne	s9,s5,8000683c <consoleread+0x58>
    80006898:	000b851b          	sext.w	a0,s7
    8000689c:	06813083          	ld	ra,104(sp)
    800068a0:	06013403          	ld	s0,96(sp)
    800068a4:	05813483          	ld	s1,88(sp)
    800068a8:	05013903          	ld	s2,80(sp)
    800068ac:	04813983          	ld	s3,72(sp)
    800068b0:	04013a03          	ld	s4,64(sp)
    800068b4:	03813a83          	ld	s5,56(sp)
    800068b8:	02813b83          	ld	s7,40(sp)
    800068bc:	02013c03          	ld	s8,32(sp)
    800068c0:	01813c83          	ld	s9,24(sp)
    800068c4:	40ab053b          	subw	a0,s6,a0
    800068c8:	03013b03          	ld	s6,48(sp)
    800068cc:	07010113          	addi	sp,sp,112
    800068d0:	00008067          	ret
    800068d4:	00001097          	auipc	ra,0x1
    800068d8:	1d8080e7          	jalr	472(ra) # 80007aac <push_on>
    800068dc:	0984a703          	lw	a4,152(s1)
    800068e0:	09c4a783          	lw	a5,156(s1)
    800068e4:	0007879b          	sext.w	a5,a5
    800068e8:	fef70ce3          	beq	a4,a5,800068e0 <consoleread+0xfc>
    800068ec:	00001097          	auipc	ra,0x1
    800068f0:	234080e7          	jalr	564(ra) # 80007b20 <pop_on>
    800068f4:	0984a783          	lw	a5,152(s1)
    800068f8:	07f7f713          	andi	a4,a5,127
    800068fc:	00e48733          	add	a4,s1,a4
    80006900:	01874703          	lbu	a4,24(a4)
    80006904:	0017869b          	addiw	a3,a5,1
    80006908:	08d4ac23          	sw	a3,152(s1)
    8000690c:	00070c9b          	sext.w	s9,a4
    80006910:	f5371ee3          	bne	a4,s3,8000686c <consoleread+0x88>
    80006914:	000b851b          	sext.w	a0,s7
    80006918:	f96bf2e3          	bgeu	s7,s6,8000689c <consoleread+0xb8>
    8000691c:	08f4ac23          	sw	a5,152(s1)
    80006920:	f7dff06f          	j	8000689c <consoleread+0xb8>

0000000080006924 <consputc>:
    80006924:	10000793          	li	a5,256
    80006928:	00f50663          	beq	a0,a5,80006934 <consputc+0x10>
    8000692c:	00001317          	auipc	t1,0x1
    80006930:	9f430067          	jr	-1548(t1) # 80007320 <uartputc_sync>
    80006934:	ff010113          	addi	sp,sp,-16
    80006938:	00113423          	sd	ra,8(sp)
    8000693c:	00813023          	sd	s0,0(sp)
    80006940:	01010413          	addi	s0,sp,16
    80006944:	00800513          	li	a0,8
    80006948:	00001097          	auipc	ra,0x1
    8000694c:	9d8080e7          	jalr	-1576(ra) # 80007320 <uartputc_sync>
    80006950:	02000513          	li	a0,32
    80006954:	00001097          	auipc	ra,0x1
    80006958:	9cc080e7          	jalr	-1588(ra) # 80007320 <uartputc_sync>
    8000695c:	00013403          	ld	s0,0(sp)
    80006960:	00813083          	ld	ra,8(sp)
    80006964:	00800513          	li	a0,8
    80006968:	01010113          	addi	sp,sp,16
    8000696c:	00001317          	auipc	t1,0x1
    80006970:	9b430067          	jr	-1612(t1) # 80007320 <uartputc_sync>

0000000080006974 <consoleintr>:
    80006974:	fe010113          	addi	sp,sp,-32
    80006978:	00813823          	sd	s0,16(sp)
    8000697c:	00913423          	sd	s1,8(sp)
    80006980:	01213023          	sd	s2,0(sp)
    80006984:	00113c23          	sd	ra,24(sp)
    80006988:	02010413          	addi	s0,sp,32
    8000698c:	00006917          	auipc	s2,0x6
    80006990:	08c90913          	addi	s2,s2,140 # 8000ca18 <cons>
    80006994:	00050493          	mv	s1,a0
    80006998:	00090513          	mv	a0,s2
    8000699c:	00001097          	auipc	ra,0x1
    800069a0:	e40080e7          	jalr	-448(ra) # 800077dc <acquire>
    800069a4:	02048c63          	beqz	s1,800069dc <consoleintr+0x68>
    800069a8:	0a092783          	lw	a5,160(s2)
    800069ac:	09892703          	lw	a4,152(s2)
    800069b0:	07f00693          	li	a3,127
    800069b4:	40e7873b          	subw	a4,a5,a4
    800069b8:	02e6e263          	bltu	a3,a4,800069dc <consoleintr+0x68>
    800069bc:	00d00713          	li	a4,13
    800069c0:	04e48063          	beq	s1,a4,80006a00 <consoleintr+0x8c>
    800069c4:	07f7f713          	andi	a4,a5,127
    800069c8:	00e90733          	add	a4,s2,a4
    800069cc:	0017879b          	addiw	a5,a5,1
    800069d0:	0af92023          	sw	a5,160(s2)
    800069d4:	00970c23          	sb	s1,24(a4)
    800069d8:	08f92e23          	sw	a5,156(s2)
    800069dc:	01013403          	ld	s0,16(sp)
    800069e0:	01813083          	ld	ra,24(sp)
    800069e4:	00813483          	ld	s1,8(sp)
    800069e8:	00013903          	ld	s2,0(sp)
    800069ec:	00006517          	auipc	a0,0x6
    800069f0:	02c50513          	addi	a0,a0,44 # 8000ca18 <cons>
    800069f4:	02010113          	addi	sp,sp,32
    800069f8:	00001317          	auipc	t1,0x1
    800069fc:	eb030067          	jr	-336(t1) # 800078a8 <release>
    80006a00:	00a00493          	li	s1,10
    80006a04:	fc1ff06f          	j	800069c4 <consoleintr+0x50>

0000000080006a08 <consoleinit>:
    80006a08:	fe010113          	addi	sp,sp,-32
    80006a0c:	00113c23          	sd	ra,24(sp)
    80006a10:	00813823          	sd	s0,16(sp)
    80006a14:	00913423          	sd	s1,8(sp)
    80006a18:	02010413          	addi	s0,sp,32
    80006a1c:	00006497          	auipc	s1,0x6
    80006a20:	ffc48493          	addi	s1,s1,-4 # 8000ca18 <cons>
    80006a24:	00048513          	mv	a0,s1
    80006a28:	00003597          	auipc	a1,0x3
    80006a2c:	c9858593          	addi	a1,a1,-872 # 800096c0 <CONSOLE_STATUS+0x6b0>
    80006a30:	00001097          	auipc	ra,0x1
    80006a34:	d88080e7          	jalr	-632(ra) # 800077b8 <initlock>
    80006a38:	00000097          	auipc	ra,0x0
    80006a3c:	7ac080e7          	jalr	1964(ra) # 800071e4 <uartinit>
    80006a40:	01813083          	ld	ra,24(sp)
    80006a44:	01013403          	ld	s0,16(sp)
    80006a48:	00000797          	auipc	a5,0x0
    80006a4c:	d9c78793          	addi	a5,a5,-612 # 800067e4 <consoleread>
    80006a50:	0af4bc23          	sd	a5,184(s1)
    80006a54:	00000797          	auipc	a5,0x0
    80006a58:	cec78793          	addi	a5,a5,-788 # 80006740 <consolewrite>
    80006a5c:	0cf4b023          	sd	a5,192(s1)
    80006a60:	00813483          	ld	s1,8(sp)
    80006a64:	02010113          	addi	sp,sp,32
    80006a68:	00008067          	ret

0000000080006a6c <console_read>:
    80006a6c:	ff010113          	addi	sp,sp,-16
    80006a70:	00813423          	sd	s0,8(sp)
    80006a74:	01010413          	addi	s0,sp,16
    80006a78:	00813403          	ld	s0,8(sp)
    80006a7c:	00006317          	auipc	t1,0x6
    80006a80:	05433303          	ld	t1,84(t1) # 8000cad0 <devsw+0x10>
    80006a84:	01010113          	addi	sp,sp,16
    80006a88:	00030067          	jr	t1

0000000080006a8c <console_write>:
    80006a8c:	ff010113          	addi	sp,sp,-16
    80006a90:	00813423          	sd	s0,8(sp)
    80006a94:	01010413          	addi	s0,sp,16
    80006a98:	00813403          	ld	s0,8(sp)
    80006a9c:	00006317          	auipc	t1,0x6
    80006aa0:	03c33303          	ld	t1,60(t1) # 8000cad8 <devsw+0x18>
    80006aa4:	01010113          	addi	sp,sp,16
    80006aa8:	00030067          	jr	t1

0000000080006aac <panic>:
    80006aac:	fe010113          	addi	sp,sp,-32
    80006ab0:	00113c23          	sd	ra,24(sp)
    80006ab4:	00813823          	sd	s0,16(sp)
    80006ab8:	00913423          	sd	s1,8(sp)
    80006abc:	02010413          	addi	s0,sp,32
    80006ac0:	00050493          	mv	s1,a0
    80006ac4:	00003517          	auipc	a0,0x3
    80006ac8:	c0450513          	addi	a0,a0,-1020 # 800096c8 <CONSOLE_STATUS+0x6b8>
    80006acc:	00006797          	auipc	a5,0x6
    80006ad0:	0a07a623          	sw	zero,172(a5) # 8000cb78 <pr+0x18>
    80006ad4:	00000097          	auipc	ra,0x0
    80006ad8:	034080e7          	jalr	52(ra) # 80006b08 <__printf>
    80006adc:	00048513          	mv	a0,s1
    80006ae0:	00000097          	auipc	ra,0x0
    80006ae4:	028080e7          	jalr	40(ra) # 80006b08 <__printf>
    80006ae8:	00002517          	auipc	a0,0x2
    80006aec:	6a850513          	addi	a0,a0,1704 # 80009190 <CONSOLE_STATUS+0x180>
    80006af0:	00000097          	auipc	ra,0x0
    80006af4:	018080e7          	jalr	24(ra) # 80006b08 <__printf>
    80006af8:	00100793          	li	a5,1
    80006afc:	00005717          	auipc	a4,0x5
    80006b00:	d6f72623          	sw	a5,-660(a4) # 8000b868 <panicked>
    80006b04:	0000006f          	j	80006b04 <panic+0x58>

0000000080006b08 <__printf>:
    80006b08:	f3010113          	addi	sp,sp,-208
    80006b0c:	08813023          	sd	s0,128(sp)
    80006b10:	07313423          	sd	s3,104(sp)
    80006b14:	09010413          	addi	s0,sp,144
    80006b18:	05813023          	sd	s8,64(sp)
    80006b1c:	08113423          	sd	ra,136(sp)
    80006b20:	06913c23          	sd	s1,120(sp)
    80006b24:	07213823          	sd	s2,112(sp)
    80006b28:	07413023          	sd	s4,96(sp)
    80006b2c:	05513c23          	sd	s5,88(sp)
    80006b30:	05613823          	sd	s6,80(sp)
    80006b34:	05713423          	sd	s7,72(sp)
    80006b38:	03913c23          	sd	s9,56(sp)
    80006b3c:	03a13823          	sd	s10,48(sp)
    80006b40:	03b13423          	sd	s11,40(sp)
    80006b44:	00006317          	auipc	t1,0x6
    80006b48:	01c30313          	addi	t1,t1,28 # 8000cb60 <pr>
    80006b4c:	01832c03          	lw	s8,24(t1)
    80006b50:	00b43423          	sd	a1,8(s0)
    80006b54:	00c43823          	sd	a2,16(s0)
    80006b58:	00d43c23          	sd	a3,24(s0)
    80006b5c:	02e43023          	sd	a4,32(s0)
    80006b60:	02f43423          	sd	a5,40(s0)
    80006b64:	03043823          	sd	a6,48(s0)
    80006b68:	03143c23          	sd	a7,56(s0)
    80006b6c:	00050993          	mv	s3,a0
    80006b70:	4a0c1663          	bnez	s8,8000701c <__printf+0x514>
    80006b74:	60098c63          	beqz	s3,8000718c <__printf+0x684>
    80006b78:	0009c503          	lbu	a0,0(s3)
    80006b7c:	00840793          	addi	a5,s0,8
    80006b80:	f6f43c23          	sd	a5,-136(s0)
    80006b84:	00000493          	li	s1,0
    80006b88:	22050063          	beqz	a0,80006da8 <__printf+0x2a0>
    80006b8c:	00002a37          	lui	s4,0x2
    80006b90:	00018ab7          	lui	s5,0x18
    80006b94:	000f4b37          	lui	s6,0xf4
    80006b98:	00989bb7          	lui	s7,0x989
    80006b9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006ba0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006ba4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006ba8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006bac:	00148c9b          	addiw	s9,s1,1
    80006bb0:	02500793          	li	a5,37
    80006bb4:	01998933          	add	s2,s3,s9
    80006bb8:	38f51263          	bne	a0,a5,80006f3c <__printf+0x434>
    80006bbc:	00094783          	lbu	a5,0(s2)
    80006bc0:	00078c9b          	sext.w	s9,a5
    80006bc4:	1e078263          	beqz	a5,80006da8 <__printf+0x2a0>
    80006bc8:	0024849b          	addiw	s1,s1,2
    80006bcc:	07000713          	li	a4,112
    80006bd0:	00998933          	add	s2,s3,s1
    80006bd4:	38e78a63          	beq	a5,a4,80006f68 <__printf+0x460>
    80006bd8:	20f76863          	bltu	a4,a5,80006de8 <__printf+0x2e0>
    80006bdc:	42a78863          	beq	a5,a0,8000700c <__printf+0x504>
    80006be0:	06400713          	li	a4,100
    80006be4:	40e79663          	bne	a5,a4,80006ff0 <__printf+0x4e8>
    80006be8:	f7843783          	ld	a5,-136(s0)
    80006bec:	0007a603          	lw	a2,0(a5)
    80006bf0:	00878793          	addi	a5,a5,8
    80006bf4:	f6f43c23          	sd	a5,-136(s0)
    80006bf8:	42064a63          	bltz	a2,8000702c <__printf+0x524>
    80006bfc:	00a00713          	li	a4,10
    80006c00:	02e677bb          	remuw	a5,a2,a4
    80006c04:	00003d97          	auipc	s11,0x3
    80006c08:	aecd8d93          	addi	s11,s11,-1300 # 800096f0 <digits>
    80006c0c:	00900593          	li	a1,9
    80006c10:	0006051b          	sext.w	a0,a2
    80006c14:	00000c93          	li	s9,0
    80006c18:	02079793          	slli	a5,a5,0x20
    80006c1c:	0207d793          	srli	a5,a5,0x20
    80006c20:	00fd87b3          	add	a5,s11,a5
    80006c24:	0007c783          	lbu	a5,0(a5)
    80006c28:	02e656bb          	divuw	a3,a2,a4
    80006c2c:	f8f40023          	sb	a5,-128(s0)
    80006c30:	14c5d863          	bge	a1,a2,80006d80 <__printf+0x278>
    80006c34:	06300593          	li	a1,99
    80006c38:	00100c93          	li	s9,1
    80006c3c:	02e6f7bb          	remuw	a5,a3,a4
    80006c40:	02079793          	slli	a5,a5,0x20
    80006c44:	0207d793          	srli	a5,a5,0x20
    80006c48:	00fd87b3          	add	a5,s11,a5
    80006c4c:	0007c783          	lbu	a5,0(a5)
    80006c50:	02e6d73b          	divuw	a4,a3,a4
    80006c54:	f8f400a3          	sb	a5,-127(s0)
    80006c58:	12a5f463          	bgeu	a1,a0,80006d80 <__printf+0x278>
    80006c5c:	00a00693          	li	a3,10
    80006c60:	00900593          	li	a1,9
    80006c64:	02d777bb          	remuw	a5,a4,a3
    80006c68:	02079793          	slli	a5,a5,0x20
    80006c6c:	0207d793          	srli	a5,a5,0x20
    80006c70:	00fd87b3          	add	a5,s11,a5
    80006c74:	0007c503          	lbu	a0,0(a5)
    80006c78:	02d757bb          	divuw	a5,a4,a3
    80006c7c:	f8a40123          	sb	a0,-126(s0)
    80006c80:	48e5f263          	bgeu	a1,a4,80007104 <__printf+0x5fc>
    80006c84:	06300513          	li	a0,99
    80006c88:	02d7f5bb          	remuw	a1,a5,a3
    80006c8c:	02059593          	slli	a1,a1,0x20
    80006c90:	0205d593          	srli	a1,a1,0x20
    80006c94:	00bd85b3          	add	a1,s11,a1
    80006c98:	0005c583          	lbu	a1,0(a1)
    80006c9c:	02d7d7bb          	divuw	a5,a5,a3
    80006ca0:	f8b401a3          	sb	a1,-125(s0)
    80006ca4:	48e57263          	bgeu	a0,a4,80007128 <__printf+0x620>
    80006ca8:	3e700513          	li	a0,999
    80006cac:	02d7f5bb          	remuw	a1,a5,a3
    80006cb0:	02059593          	slli	a1,a1,0x20
    80006cb4:	0205d593          	srli	a1,a1,0x20
    80006cb8:	00bd85b3          	add	a1,s11,a1
    80006cbc:	0005c583          	lbu	a1,0(a1)
    80006cc0:	02d7d7bb          	divuw	a5,a5,a3
    80006cc4:	f8b40223          	sb	a1,-124(s0)
    80006cc8:	46e57663          	bgeu	a0,a4,80007134 <__printf+0x62c>
    80006ccc:	02d7f5bb          	remuw	a1,a5,a3
    80006cd0:	02059593          	slli	a1,a1,0x20
    80006cd4:	0205d593          	srli	a1,a1,0x20
    80006cd8:	00bd85b3          	add	a1,s11,a1
    80006cdc:	0005c583          	lbu	a1,0(a1)
    80006ce0:	02d7d7bb          	divuw	a5,a5,a3
    80006ce4:	f8b402a3          	sb	a1,-123(s0)
    80006ce8:	46ea7863          	bgeu	s4,a4,80007158 <__printf+0x650>
    80006cec:	02d7f5bb          	remuw	a1,a5,a3
    80006cf0:	02059593          	slli	a1,a1,0x20
    80006cf4:	0205d593          	srli	a1,a1,0x20
    80006cf8:	00bd85b3          	add	a1,s11,a1
    80006cfc:	0005c583          	lbu	a1,0(a1)
    80006d00:	02d7d7bb          	divuw	a5,a5,a3
    80006d04:	f8b40323          	sb	a1,-122(s0)
    80006d08:	3eeaf863          	bgeu	s5,a4,800070f8 <__printf+0x5f0>
    80006d0c:	02d7f5bb          	remuw	a1,a5,a3
    80006d10:	02059593          	slli	a1,a1,0x20
    80006d14:	0205d593          	srli	a1,a1,0x20
    80006d18:	00bd85b3          	add	a1,s11,a1
    80006d1c:	0005c583          	lbu	a1,0(a1)
    80006d20:	02d7d7bb          	divuw	a5,a5,a3
    80006d24:	f8b403a3          	sb	a1,-121(s0)
    80006d28:	42eb7e63          	bgeu	s6,a4,80007164 <__printf+0x65c>
    80006d2c:	02d7f5bb          	remuw	a1,a5,a3
    80006d30:	02059593          	slli	a1,a1,0x20
    80006d34:	0205d593          	srli	a1,a1,0x20
    80006d38:	00bd85b3          	add	a1,s11,a1
    80006d3c:	0005c583          	lbu	a1,0(a1)
    80006d40:	02d7d7bb          	divuw	a5,a5,a3
    80006d44:	f8b40423          	sb	a1,-120(s0)
    80006d48:	42ebfc63          	bgeu	s7,a4,80007180 <__printf+0x678>
    80006d4c:	02079793          	slli	a5,a5,0x20
    80006d50:	0207d793          	srli	a5,a5,0x20
    80006d54:	00fd8db3          	add	s11,s11,a5
    80006d58:	000dc703          	lbu	a4,0(s11)
    80006d5c:	00a00793          	li	a5,10
    80006d60:	00900c93          	li	s9,9
    80006d64:	f8e404a3          	sb	a4,-119(s0)
    80006d68:	00065c63          	bgez	a2,80006d80 <__printf+0x278>
    80006d6c:	f9040713          	addi	a4,s0,-112
    80006d70:	00f70733          	add	a4,a4,a5
    80006d74:	02d00693          	li	a3,45
    80006d78:	fed70823          	sb	a3,-16(a4)
    80006d7c:	00078c93          	mv	s9,a5
    80006d80:	f8040793          	addi	a5,s0,-128
    80006d84:	01978cb3          	add	s9,a5,s9
    80006d88:	f7f40d13          	addi	s10,s0,-129
    80006d8c:	000cc503          	lbu	a0,0(s9)
    80006d90:	fffc8c93          	addi	s9,s9,-1
    80006d94:	00000097          	auipc	ra,0x0
    80006d98:	b90080e7          	jalr	-1136(ra) # 80006924 <consputc>
    80006d9c:	ffac98e3          	bne	s9,s10,80006d8c <__printf+0x284>
    80006da0:	00094503          	lbu	a0,0(s2)
    80006da4:	e00514e3          	bnez	a0,80006bac <__printf+0xa4>
    80006da8:	1a0c1663          	bnez	s8,80006f54 <__printf+0x44c>
    80006dac:	08813083          	ld	ra,136(sp)
    80006db0:	08013403          	ld	s0,128(sp)
    80006db4:	07813483          	ld	s1,120(sp)
    80006db8:	07013903          	ld	s2,112(sp)
    80006dbc:	06813983          	ld	s3,104(sp)
    80006dc0:	06013a03          	ld	s4,96(sp)
    80006dc4:	05813a83          	ld	s5,88(sp)
    80006dc8:	05013b03          	ld	s6,80(sp)
    80006dcc:	04813b83          	ld	s7,72(sp)
    80006dd0:	04013c03          	ld	s8,64(sp)
    80006dd4:	03813c83          	ld	s9,56(sp)
    80006dd8:	03013d03          	ld	s10,48(sp)
    80006ddc:	02813d83          	ld	s11,40(sp)
    80006de0:	0d010113          	addi	sp,sp,208
    80006de4:	00008067          	ret
    80006de8:	07300713          	li	a4,115
    80006dec:	1ce78a63          	beq	a5,a4,80006fc0 <__printf+0x4b8>
    80006df0:	07800713          	li	a4,120
    80006df4:	1ee79e63          	bne	a5,a4,80006ff0 <__printf+0x4e8>
    80006df8:	f7843783          	ld	a5,-136(s0)
    80006dfc:	0007a703          	lw	a4,0(a5)
    80006e00:	00878793          	addi	a5,a5,8
    80006e04:	f6f43c23          	sd	a5,-136(s0)
    80006e08:	28074263          	bltz	a4,8000708c <__printf+0x584>
    80006e0c:	00003d97          	auipc	s11,0x3
    80006e10:	8e4d8d93          	addi	s11,s11,-1820 # 800096f0 <digits>
    80006e14:	00f77793          	andi	a5,a4,15
    80006e18:	00fd87b3          	add	a5,s11,a5
    80006e1c:	0007c683          	lbu	a3,0(a5)
    80006e20:	00f00613          	li	a2,15
    80006e24:	0007079b          	sext.w	a5,a4
    80006e28:	f8d40023          	sb	a3,-128(s0)
    80006e2c:	0047559b          	srliw	a1,a4,0x4
    80006e30:	0047569b          	srliw	a3,a4,0x4
    80006e34:	00000c93          	li	s9,0
    80006e38:	0ee65063          	bge	a2,a4,80006f18 <__printf+0x410>
    80006e3c:	00f6f693          	andi	a3,a3,15
    80006e40:	00dd86b3          	add	a3,s11,a3
    80006e44:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006e48:	0087d79b          	srliw	a5,a5,0x8
    80006e4c:	00100c93          	li	s9,1
    80006e50:	f8d400a3          	sb	a3,-127(s0)
    80006e54:	0cb67263          	bgeu	a2,a1,80006f18 <__printf+0x410>
    80006e58:	00f7f693          	andi	a3,a5,15
    80006e5c:	00dd86b3          	add	a3,s11,a3
    80006e60:	0006c583          	lbu	a1,0(a3)
    80006e64:	00f00613          	li	a2,15
    80006e68:	0047d69b          	srliw	a3,a5,0x4
    80006e6c:	f8b40123          	sb	a1,-126(s0)
    80006e70:	0047d593          	srli	a1,a5,0x4
    80006e74:	28f67e63          	bgeu	a2,a5,80007110 <__printf+0x608>
    80006e78:	00f6f693          	andi	a3,a3,15
    80006e7c:	00dd86b3          	add	a3,s11,a3
    80006e80:	0006c503          	lbu	a0,0(a3)
    80006e84:	0087d813          	srli	a6,a5,0x8
    80006e88:	0087d69b          	srliw	a3,a5,0x8
    80006e8c:	f8a401a3          	sb	a0,-125(s0)
    80006e90:	28b67663          	bgeu	a2,a1,8000711c <__printf+0x614>
    80006e94:	00f6f693          	andi	a3,a3,15
    80006e98:	00dd86b3          	add	a3,s11,a3
    80006e9c:	0006c583          	lbu	a1,0(a3)
    80006ea0:	00c7d513          	srli	a0,a5,0xc
    80006ea4:	00c7d69b          	srliw	a3,a5,0xc
    80006ea8:	f8b40223          	sb	a1,-124(s0)
    80006eac:	29067a63          	bgeu	a2,a6,80007140 <__printf+0x638>
    80006eb0:	00f6f693          	andi	a3,a3,15
    80006eb4:	00dd86b3          	add	a3,s11,a3
    80006eb8:	0006c583          	lbu	a1,0(a3)
    80006ebc:	0107d813          	srli	a6,a5,0x10
    80006ec0:	0107d69b          	srliw	a3,a5,0x10
    80006ec4:	f8b402a3          	sb	a1,-123(s0)
    80006ec8:	28a67263          	bgeu	a2,a0,8000714c <__printf+0x644>
    80006ecc:	00f6f693          	andi	a3,a3,15
    80006ed0:	00dd86b3          	add	a3,s11,a3
    80006ed4:	0006c683          	lbu	a3,0(a3)
    80006ed8:	0147d79b          	srliw	a5,a5,0x14
    80006edc:	f8d40323          	sb	a3,-122(s0)
    80006ee0:	21067663          	bgeu	a2,a6,800070ec <__printf+0x5e4>
    80006ee4:	02079793          	slli	a5,a5,0x20
    80006ee8:	0207d793          	srli	a5,a5,0x20
    80006eec:	00fd8db3          	add	s11,s11,a5
    80006ef0:	000dc683          	lbu	a3,0(s11)
    80006ef4:	00800793          	li	a5,8
    80006ef8:	00700c93          	li	s9,7
    80006efc:	f8d403a3          	sb	a3,-121(s0)
    80006f00:	00075c63          	bgez	a4,80006f18 <__printf+0x410>
    80006f04:	f9040713          	addi	a4,s0,-112
    80006f08:	00f70733          	add	a4,a4,a5
    80006f0c:	02d00693          	li	a3,45
    80006f10:	fed70823          	sb	a3,-16(a4)
    80006f14:	00078c93          	mv	s9,a5
    80006f18:	f8040793          	addi	a5,s0,-128
    80006f1c:	01978cb3          	add	s9,a5,s9
    80006f20:	f7f40d13          	addi	s10,s0,-129
    80006f24:	000cc503          	lbu	a0,0(s9)
    80006f28:	fffc8c93          	addi	s9,s9,-1
    80006f2c:	00000097          	auipc	ra,0x0
    80006f30:	9f8080e7          	jalr	-1544(ra) # 80006924 <consputc>
    80006f34:	ff9d18e3          	bne	s10,s9,80006f24 <__printf+0x41c>
    80006f38:	0100006f          	j	80006f48 <__printf+0x440>
    80006f3c:	00000097          	auipc	ra,0x0
    80006f40:	9e8080e7          	jalr	-1560(ra) # 80006924 <consputc>
    80006f44:	000c8493          	mv	s1,s9
    80006f48:	00094503          	lbu	a0,0(s2)
    80006f4c:	c60510e3          	bnez	a0,80006bac <__printf+0xa4>
    80006f50:	e40c0ee3          	beqz	s8,80006dac <__printf+0x2a4>
    80006f54:	00006517          	auipc	a0,0x6
    80006f58:	c0c50513          	addi	a0,a0,-1012 # 8000cb60 <pr>
    80006f5c:	00001097          	auipc	ra,0x1
    80006f60:	94c080e7          	jalr	-1716(ra) # 800078a8 <release>
    80006f64:	e49ff06f          	j	80006dac <__printf+0x2a4>
    80006f68:	f7843783          	ld	a5,-136(s0)
    80006f6c:	03000513          	li	a0,48
    80006f70:	01000d13          	li	s10,16
    80006f74:	00878713          	addi	a4,a5,8
    80006f78:	0007bc83          	ld	s9,0(a5)
    80006f7c:	f6e43c23          	sd	a4,-136(s0)
    80006f80:	00000097          	auipc	ra,0x0
    80006f84:	9a4080e7          	jalr	-1628(ra) # 80006924 <consputc>
    80006f88:	07800513          	li	a0,120
    80006f8c:	00000097          	auipc	ra,0x0
    80006f90:	998080e7          	jalr	-1640(ra) # 80006924 <consputc>
    80006f94:	00002d97          	auipc	s11,0x2
    80006f98:	75cd8d93          	addi	s11,s11,1884 # 800096f0 <digits>
    80006f9c:	03ccd793          	srli	a5,s9,0x3c
    80006fa0:	00fd87b3          	add	a5,s11,a5
    80006fa4:	0007c503          	lbu	a0,0(a5)
    80006fa8:	fffd0d1b          	addiw	s10,s10,-1
    80006fac:	004c9c93          	slli	s9,s9,0x4
    80006fb0:	00000097          	auipc	ra,0x0
    80006fb4:	974080e7          	jalr	-1676(ra) # 80006924 <consputc>
    80006fb8:	fe0d12e3          	bnez	s10,80006f9c <__printf+0x494>
    80006fbc:	f8dff06f          	j	80006f48 <__printf+0x440>
    80006fc0:	f7843783          	ld	a5,-136(s0)
    80006fc4:	0007bc83          	ld	s9,0(a5)
    80006fc8:	00878793          	addi	a5,a5,8
    80006fcc:	f6f43c23          	sd	a5,-136(s0)
    80006fd0:	000c9a63          	bnez	s9,80006fe4 <__printf+0x4dc>
    80006fd4:	1080006f          	j	800070dc <__printf+0x5d4>
    80006fd8:	001c8c93          	addi	s9,s9,1
    80006fdc:	00000097          	auipc	ra,0x0
    80006fe0:	948080e7          	jalr	-1720(ra) # 80006924 <consputc>
    80006fe4:	000cc503          	lbu	a0,0(s9)
    80006fe8:	fe0518e3          	bnez	a0,80006fd8 <__printf+0x4d0>
    80006fec:	f5dff06f          	j	80006f48 <__printf+0x440>
    80006ff0:	02500513          	li	a0,37
    80006ff4:	00000097          	auipc	ra,0x0
    80006ff8:	930080e7          	jalr	-1744(ra) # 80006924 <consputc>
    80006ffc:	000c8513          	mv	a0,s9
    80007000:	00000097          	auipc	ra,0x0
    80007004:	924080e7          	jalr	-1756(ra) # 80006924 <consputc>
    80007008:	f41ff06f          	j	80006f48 <__printf+0x440>
    8000700c:	02500513          	li	a0,37
    80007010:	00000097          	auipc	ra,0x0
    80007014:	914080e7          	jalr	-1772(ra) # 80006924 <consputc>
    80007018:	f31ff06f          	j	80006f48 <__printf+0x440>
    8000701c:	00030513          	mv	a0,t1
    80007020:	00000097          	auipc	ra,0x0
    80007024:	7bc080e7          	jalr	1980(ra) # 800077dc <acquire>
    80007028:	b4dff06f          	j	80006b74 <__printf+0x6c>
    8000702c:	40c0053b          	negw	a0,a2
    80007030:	00a00713          	li	a4,10
    80007034:	02e576bb          	remuw	a3,a0,a4
    80007038:	00002d97          	auipc	s11,0x2
    8000703c:	6b8d8d93          	addi	s11,s11,1720 # 800096f0 <digits>
    80007040:	ff700593          	li	a1,-9
    80007044:	02069693          	slli	a3,a3,0x20
    80007048:	0206d693          	srli	a3,a3,0x20
    8000704c:	00dd86b3          	add	a3,s11,a3
    80007050:	0006c683          	lbu	a3,0(a3)
    80007054:	02e557bb          	divuw	a5,a0,a4
    80007058:	f8d40023          	sb	a3,-128(s0)
    8000705c:	10b65e63          	bge	a2,a1,80007178 <__printf+0x670>
    80007060:	06300593          	li	a1,99
    80007064:	02e7f6bb          	remuw	a3,a5,a4
    80007068:	02069693          	slli	a3,a3,0x20
    8000706c:	0206d693          	srli	a3,a3,0x20
    80007070:	00dd86b3          	add	a3,s11,a3
    80007074:	0006c683          	lbu	a3,0(a3)
    80007078:	02e7d73b          	divuw	a4,a5,a4
    8000707c:	00200793          	li	a5,2
    80007080:	f8d400a3          	sb	a3,-127(s0)
    80007084:	bca5ece3          	bltu	a1,a0,80006c5c <__printf+0x154>
    80007088:	ce5ff06f          	j	80006d6c <__printf+0x264>
    8000708c:	40e007bb          	negw	a5,a4
    80007090:	00002d97          	auipc	s11,0x2
    80007094:	660d8d93          	addi	s11,s11,1632 # 800096f0 <digits>
    80007098:	00f7f693          	andi	a3,a5,15
    8000709c:	00dd86b3          	add	a3,s11,a3
    800070a0:	0006c583          	lbu	a1,0(a3)
    800070a4:	ff100613          	li	a2,-15
    800070a8:	0047d69b          	srliw	a3,a5,0x4
    800070ac:	f8b40023          	sb	a1,-128(s0)
    800070b0:	0047d59b          	srliw	a1,a5,0x4
    800070b4:	0ac75e63          	bge	a4,a2,80007170 <__printf+0x668>
    800070b8:	00f6f693          	andi	a3,a3,15
    800070bc:	00dd86b3          	add	a3,s11,a3
    800070c0:	0006c603          	lbu	a2,0(a3)
    800070c4:	00f00693          	li	a3,15
    800070c8:	0087d79b          	srliw	a5,a5,0x8
    800070cc:	f8c400a3          	sb	a2,-127(s0)
    800070d0:	d8b6e4e3          	bltu	a3,a1,80006e58 <__printf+0x350>
    800070d4:	00200793          	li	a5,2
    800070d8:	e2dff06f          	j	80006f04 <__printf+0x3fc>
    800070dc:	00002c97          	auipc	s9,0x2
    800070e0:	5f4c8c93          	addi	s9,s9,1524 # 800096d0 <CONSOLE_STATUS+0x6c0>
    800070e4:	02800513          	li	a0,40
    800070e8:	ef1ff06f          	j	80006fd8 <__printf+0x4d0>
    800070ec:	00700793          	li	a5,7
    800070f0:	00600c93          	li	s9,6
    800070f4:	e0dff06f          	j	80006f00 <__printf+0x3f8>
    800070f8:	00700793          	li	a5,7
    800070fc:	00600c93          	li	s9,6
    80007100:	c69ff06f          	j	80006d68 <__printf+0x260>
    80007104:	00300793          	li	a5,3
    80007108:	00200c93          	li	s9,2
    8000710c:	c5dff06f          	j	80006d68 <__printf+0x260>
    80007110:	00300793          	li	a5,3
    80007114:	00200c93          	li	s9,2
    80007118:	de9ff06f          	j	80006f00 <__printf+0x3f8>
    8000711c:	00400793          	li	a5,4
    80007120:	00300c93          	li	s9,3
    80007124:	dddff06f          	j	80006f00 <__printf+0x3f8>
    80007128:	00400793          	li	a5,4
    8000712c:	00300c93          	li	s9,3
    80007130:	c39ff06f          	j	80006d68 <__printf+0x260>
    80007134:	00500793          	li	a5,5
    80007138:	00400c93          	li	s9,4
    8000713c:	c2dff06f          	j	80006d68 <__printf+0x260>
    80007140:	00500793          	li	a5,5
    80007144:	00400c93          	li	s9,4
    80007148:	db9ff06f          	j	80006f00 <__printf+0x3f8>
    8000714c:	00600793          	li	a5,6
    80007150:	00500c93          	li	s9,5
    80007154:	dadff06f          	j	80006f00 <__printf+0x3f8>
    80007158:	00600793          	li	a5,6
    8000715c:	00500c93          	li	s9,5
    80007160:	c09ff06f          	j	80006d68 <__printf+0x260>
    80007164:	00800793          	li	a5,8
    80007168:	00700c93          	li	s9,7
    8000716c:	bfdff06f          	j	80006d68 <__printf+0x260>
    80007170:	00100793          	li	a5,1
    80007174:	d91ff06f          	j	80006f04 <__printf+0x3fc>
    80007178:	00100793          	li	a5,1
    8000717c:	bf1ff06f          	j	80006d6c <__printf+0x264>
    80007180:	00900793          	li	a5,9
    80007184:	00800c93          	li	s9,8
    80007188:	be1ff06f          	j	80006d68 <__printf+0x260>
    8000718c:	00002517          	auipc	a0,0x2
    80007190:	54c50513          	addi	a0,a0,1356 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007194:	00000097          	auipc	ra,0x0
    80007198:	918080e7          	jalr	-1768(ra) # 80006aac <panic>

000000008000719c <printfinit>:
    8000719c:	fe010113          	addi	sp,sp,-32
    800071a0:	00813823          	sd	s0,16(sp)
    800071a4:	00913423          	sd	s1,8(sp)
    800071a8:	00113c23          	sd	ra,24(sp)
    800071ac:	02010413          	addi	s0,sp,32
    800071b0:	00006497          	auipc	s1,0x6
    800071b4:	9b048493          	addi	s1,s1,-1616 # 8000cb60 <pr>
    800071b8:	00048513          	mv	a0,s1
    800071bc:	00002597          	auipc	a1,0x2
    800071c0:	52c58593          	addi	a1,a1,1324 # 800096e8 <CONSOLE_STATUS+0x6d8>
    800071c4:	00000097          	auipc	ra,0x0
    800071c8:	5f4080e7          	jalr	1524(ra) # 800077b8 <initlock>
    800071cc:	01813083          	ld	ra,24(sp)
    800071d0:	01013403          	ld	s0,16(sp)
    800071d4:	0004ac23          	sw	zero,24(s1)
    800071d8:	00813483          	ld	s1,8(sp)
    800071dc:	02010113          	addi	sp,sp,32
    800071e0:	00008067          	ret

00000000800071e4 <uartinit>:
    800071e4:	ff010113          	addi	sp,sp,-16
    800071e8:	00813423          	sd	s0,8(sp)
    800071ec:	01010413          	addi	s0,sp,16
    800071f0:	100007b7          	lui	a5,0x10000
    800071f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800071f8:	f8000713          	li	a4,-128
    800071fc:	00e781a3          	sb	a4,3(a5)
    80007200:	00300713          	li	a4,3
    80007204:	00e78023          	sb	a4,0(a5)
    80007208:	000780a3          	sb	zero,1(a5)
    8000720c:	00e781a3          	sb	a4,3(a5)
    80007210:	00700693          	li	a3,7
    80007214:	00d78123          	sb	a3,2(a5)
    80007218:	00e780a3          	sb	a4,1(a5)
    8000721c:	00813403          	ld	s0,8(sp)
    80007220:	01010113          	addi	sp,sp,16
    80007224:	00008067          	ret

0000000080007228 <uartputc>:
    80007228:	00004797          	auipc	a5,0x4
    8000722c:	6407a783          	lw	a5,1600(a5) # 8000b868 <panicked>
    80007230:	00078463          	beqz	a5,80007238 <uartputc+0x10>
    80007234:	0000006f          	j	80007234 <uartputc+0xc>
    80007238:	fd010113          	addi	sp,sp,-48
    8000723c:	02813023          	sd	s0,32(sp)
    80007240:	00913c23          	sd	s1,24(sp)
    80007244:	01213823          	sd	s2,16(sp)
    80007248:	01313423          	sd	s3,8(sp)
    8000724c:	02113423          	sd	ra,40(sp)
    80007250:	03010413          	addi	s0,sp,48
    80007254:	00004917          	auipc	s2,0x4
    80007258:	61c90913          	addi	s2,s2,1564 # 8000b870 <uart_tx_r>
    8000725c:	00093783          	ld	a5,0(s2)
    80007260:	00004497          	auipc	s1,0x4
    80007264:	61848493          	addi	s1,s1,1560 # 8000b878 <uart_tx_w>
    80007268:	0004b703          	ld	a4,0(s1)
    8000726c:	02078693          	addi	a3,a5,32
    80007270:	00050993          	mv	s3,a0
    80007274:	02e69c63          	bne	a3,a4,800072ac <uartputc+0x84>
    80007278:	00001097          	auipc	ra,0x1
    8000727c:	834080e7          	jalr	-1996(ra) # 80007aac <push_on>
    80007280:	00093783          	ld	a5,0(s2)
    80007284:	0004b703          	ld	a4,0(s1)
    80007288:	02078793          	addi	a5,a5,32
    8000728c:	00e79463          	bne	a5,a4,80007294 <uartputc+0x6c>
    80007290:	0000006f          	j	80007290 <uartputc+0x68>
    80007294:	00001097          	auipc	ra,0x1
    80007298:	88c080e7          	jalr	-1908(ra) # 80007b20 <pop_on>
    8000729c:	00093783          	ld	a5,0(s2)
    800072a0:	0004b703          	ld	a4,0(s1)
    800072a4:	02078693          	addi	a3,a5,32
    800072a8:	fce688e3          	beq	a3,a4,80007278 <uartputc+0x50>
    800072ac:	01f77693          	andi	a3,a4,31
    800072b0:	00006597          	auipc	a1,0x6
    800072b4:	8d058593          	addi	a1,a1,-1840 # 8000cb80 <uart_tx_buf>
    800072b8:	00d586b3          	add	a3,a1,a3
    800072bc:	00170713          	addi	a4,a4,1
    800072c0:	01368023          	sb	s3,0(a3)
    800072c4:	00e4b023          	sd	a4,0(s1)
    800072c8:	10000637          	lui	a2,0x10000
    800072cc:	02f71063          	bne	a4,a5,800072ec <uartputc+0xc4>
    800072d0:	0340006f          	j	80007304 <uartputc+0xdc>
    800072d4:	00074703          	lbu	a4,0(a4)
    800072d8:	00f93023          	sd	a5,0(s2)
    800072dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800072e0:	00093783          	ld	a5,0(s2)
    800072e4:	0004b703          	ld	a4,0(s1)
    800072e8:	00f70e63          	beq	a4,a5,80007304 <uartputc+0xdc>
    800072ec:	00564683          	lbu	a3,5(a2)
    800072f0:	01f7f713          	andi	a4,a5,31
    800072f4:	00e58733          	add	a4,a1,a4
    800072f8:	0206f693          	andi	a3,a3,32
    800072fc:	00178793          	addi	a5,a5,1
    80007300:	fc069ae3          	bnez	a3,800072d4 <uartputc+0xac>
    80007304:	02813083          	ld	ra,40(sp)
    80007308:	02013403          	ld	s0,32(sp)
    8000730c:	01813483          	ld	s1,24(sp)
    80007310:	01013903          	ld	s2,16(sp)
    80007314:	00813983          	ld	s3,8(sp)
    80007318:	03010113          	addi	sp,sp,48
    8000731c:	00008067          	ret

0000000080007320 <uartputc_sync>:
    80007320:	ff010113          	addi	sp,sp,-16
    80007324:	00813423          	sd	s0,8(sp)
    80007328:	01010413          	addi	s0,sp,16
    8000732c:	00004717          	auipc	a4,0x4
    80007330:	53c72703          	lw	a4,1340(a4) # 8000b868 <panicked>
    80007334:	02071663          	bnez	a4,80007360 <uartputc_sync+0x40>
    80007338:	00050793          	mv	a5,a0
    8000733c:	100006b7          	lui	a3,0x10000
    80007340:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007344:	02077713          	andi	a4,a4,32
    80007348:	fe070ce3          	beqz	a4,80007340 <uartputc_sync+0x20>
    8000734c:	0ff7f793          	andi	a5,a5,255
    80007350:	00f68023          	sb	a5,0(a3)
    80007354:	00813403          	ld	s0,8(sp)
    80007358:	01010113          	addi	sp,sp,16
    8000735c:	00008067          	ret
    80007360:	0000006f          	j	80007360 <uartputc_sync+0x40>

0000000080007364 <uartstart>:
    80007364:	ff010113          	addi	sp,sp,-16
    80007368:	00813423          	sd	s0,8(sp)
    8000736c:	01010413          	addi	s0,sp,16
    80007370:	00004617          	auipc	a2,0x4
    80007374:	50060613          	addi	a2,a2,1280 # 8000b870 <uart_tx_r>
    80007378:	00004517          	auipc	a0,0x4
    8000737c:	50050513          	addi	a0,a0,1280 # 8000b878 <uart_tx_w>
    80007380:	00063783          	ld	a5,0(a2)
    80007384:	00053703          	ld	a4,0(a0)
    80007388:	04f70263          	beq	a4,a5,800073cc <uartstart+0x68>
    8000738c:	100005b7          	lui	a1,0x10000
    80007390:	00005817          	auipc	a6,0x5
    80007394:	7f080813          	addi	a6,a6,2032 # 8000cb80 <uart_tx_buf>
    80007398:	01c0006f          	j	800073b4 <uartstart+0x50>
    8000739c:	0006c703          	lbu	a4,0(a3)
    800073a0:	00f63023          	sd	a5,0(a2)
    800073a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800073a8:	00063783          	ld	a5,0(a2)
    800073ac:	00053703          	ld	a4,0(a0)
    800073b0:	00f70e63          	beq	a4,a5,800073cc <uartstart+0x68>
    800073b4:	01f7f713          	andi	a4,a5,31
    800073b8:	00e806b3          	add	a3,a6,a4
    800073bc:	0055c703          	lbu	a4,5(a1)
    800073c0:	00178793          	addi	a5,a5,1
    800073c4:	02077713          	andi	a4,a4,32
    800073c8:	fc071ae3          	bnez	a4,8000739c <uartstart+0x38>
    800073cc:	00813403          	ld	s0,8(sp)
    800073d0:	01010113          	addi	sp,sp,16
    800073d4:	00008067          	ret

00000000800073d8 <uartgetc>:
    800073d8:	ff010113          	addi	sp,sp,-16
    800073dc:	00813423          	sd	s0,8(sp)
    800073e0:	01010413          	addi	s0,sp,16
    800073e4:	10000737          	lui	a4,0x10000
    800073e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800073ec:	0017f793          	andi	a5,a5,1
    800073f0:	00078c63          	beqz	a5,80007408 <uartgetc+0x30>
    800073f4:	00074503          	lbu	a0,0(a4)
    800073f8:	0ff57513          	andi	a0,a0,255
    800073fc:	00813403          	ld	s0,8(sp)
    80007400:	01010113          	addi	sp,sp,16
    80007404:	00008067          	ret
    80007408:	fff00513          	li	a0,-1
    8000740c:	ff1ff06f          	j	800073fc <uartgetc+0x24>

0000000080007410 <uartintr>:
    80007410:	100007b7          	lui	a5,0x10000
    80007414:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007418:	0017f793          	andi	a5,a5,1
    8000741c:	0a078463          	beqz	a5,800074c4 <uartintr+0xb4>
    80007420:	fe010113          	addi	sp,sp,-32
    80007424:	00813823          	sd	s0,16(sp)
    80007428:	00913423          	sd	s1,8(sp)
    8000742c:	00113c23          	sd	ra,24(sp)
    80007430:	02010413          	addi	s0,sp,32
    80007434:	100004b7          	lui	s1,0x10000
    80007438:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000743c:	0ff57513          	andi	a0,a0,255
    80007440:	fffff097          	auipc	ra,0xfffff
    80007444:	534080e7          	jalr	1332(ra) # 80006974 <consoleintr>
    80007448:	0054c783          	lbu	a5,5(s1)
    8000744c:	0017f793          	andi	a5,a5,1
    80007450:	fe0794e3          	bnez	a5,80007438 <uartintr+0x28>
    80007454:	00004617          	auipc	a2,0x4
    80007458:	41c60613          	addi	a2,a2,1052 # 8000b870 <uart_tx_r>
    8000745c:	00004517          	auipc	a0,0x4
    80007460:	41c50513          	addi	a0,a0,1052 # 8000b878 <uart_tx_w>
    80007464:	00063783          	ld	a5,0(a2)
    80007468:	00053703          	ld	a4,0(a0)
    8000746c:	04f70263          	beq	a4,a5,800074b0 <uartintr+0xa0>
    80007470:	100005b7          	lui	a1,0x10000
    80007474:	00005817          	auipc	a6,0x5
    80007478:	70c80813          	addi	a6,a6,1804 # 8000cb80 <uart_tx_buf>
    8000747c:	01c0006f          	j	80007498 <uartintr+0x88>
    80007480:	0006c703          	lbu	a4,0(a3)
    80007484:	00f63023          	sd	a5,0(a2)
    80007488:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000748c:	00063783          	ld	a5,0(a2)
    80007490:	00053703          	ld	a4,0(a0)
    80007494:	00f70e63          	beq	a4,a5,800074b0 <uartintr+0xa0>
    80007498:	01f7f713          	andi	a4,a5,31
    8000749c:	00e806b3          	add	a3,a6,a4
    800074a0:	0055c703          	lbu	a4,5(a1)
    800074a4:	00178793          	addi	a5,a5,1
    800074a8:	02077713          	andi	a4,a4,32
    800074ac:	fc071ae3          	bnez	a4,80007480 <uartintr+0x70>
    800074b0:	01813083          	ld	ra,24(sp)
    800074b4:	01013403          	ld	s0,16(sp)
    800074b8:	00813483          	ld	s1,8(sp)
    800074bc:	02010113          	addi	sp,sp,32
    800074c0:	00008067          	ret
    800074c4:	00004617          	auipc	a2,0x4
    800074c8:	3ac60613          	addi	a2,a2,940 # 8000b870 <uart_tx_r>
    800074cc:	00004517          	auipc	a0,0x4
    800074d0:	3ac50513          	addi	a0,a0,940 # 8000b878 <uart_tx_w>
    800074d4:	00063783          	ld	a5,0(a2)
    800074d8:	00053703          	ld	a4,0(a0)
    800074dc:	04f70263          	beq	a4,a5,80007520 <uartintr+0x110>
    800074e0:	100005b7          	lui	a1,0x10000
    800074e4:	00005817          	auipc	a6,0x5
    800074e8:	69c80813          	addi	a6,a6,1692 # 8000cb80 <uart_tx_buf>
    800074ec:	01c0006f          	j	80007508 <uartintr+0xf8>
    800074f0:	0006c703          	lbu	a4,0(a3)
    800074f4:	00f63023          	sd	a5,0(a2)
    800074f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800074fc:	00063783          	ld	a5,0(a2)
    80007500:	00053703          	ld	a4,0(a0)
    80007504:	02f70063          	beq	a4,a5,80007524 <uartintr+0x114>
    80007508:	01f7f713          	andi	a4,a5,31
    8000750c:	00e806b3          	add	a3,a6,a4
    80007510:	0055c703          	lbu	a4,5(a1)
    80007514:	00178793          	addi	a5,a5,1
    80007518:	02077713          	andi	a4,a4,32
    8000751c:	fc071ae3          	bnez	a4,800074f0 <uartintr+0xe0>
    80007520:	00008067          	ret
    80007524:	00008067          	ret

0000000080007528 <kinit>:
    80007528:	fc010113          	addi	sp,sp,-64
    8000752c:	02913423          	sd	s1,40(sp)
    80007530:	fffff7b7          	lui	a5,0xfffff
    80007534:	00006497          	auipc	s1,0x6
    80007538:	66b48493          	addi	s1,s1,1643 # 8000db9f <end+0xfff>
    8000753c:	02813823          	sd	s0,48(sp)
    80007540:	01313c23          	sd	s3,24(sp)
    80007544:	00f4f4b3          	and	s1,s1,a5
    80007548:	02113c23          	sd	ra,56(sp)
    8000754c:	03213023          	sd	s2,32(sp)
    80007550:	01413823          	sd	s4,16(sp)
    80007554:	01513423          	sd	s5,8(sp)
    80007558:	04010413          	addi	s0,sp,64
    8000755c:	000017b7          	lui	a5,0x1
    80007560:	01100993          	li	s3,17
    80007564:	00f487b3          	add	a5,s1,a5
    80007568:	01b99993          	slli	s3,s3,0x1b
    8000756c:	06f9e063          	bltu	s3,a5,800075cc <kinit+0xa4>
    80007570:	00005a97          	auipc	s5,0x5
    80007574:	630a8a93          	addi	s5,s5,1584 # 8000cba0 <end>
    80007578:	0754ec63          	bltu	s1,s5,800075f0 <kinit+0xc8>
    8000757c:	0734fa63          	bgeu	s1,s3,800075f0 <kinit+0xc8>
    80007580:	00088a37          	lui	s4,0x88
    80007584:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007588:	00004917          	auipc	s2,0x4
    8000758c:	2f890913          	addi	s2,s2,760 # 8000b880 <kmem>
    80007590:	00ca1a13          	slli	s4,s4,0xc
    80007594:	0140006f          	j	800075a8 <kinit+0x80>
    80007598:	000017b7          	lui	a5,0x1
    8000759c:	00f484b3          	add	s1,s1,a5
    800075a0:	0554e863          	bltu	s1,s5,800075f0 <kinit+0xc8>
    800075a4:	0534f663          	bgeu	s1,s3,800075f0 <kinit+0xc8>
    800075a8:	00001637          	lui	a2,0x1
    800075ac:	00100593          	li	a1,1
    800075b0:	00048513          	mv	a0,s1
    800075b4:	00000097          	auipc	ra,0x0
    800075b8:	5e4080e7          	jalr	1508(ra) # 80007b98 <__memset>
    800075bc:	00093783          	ld	a5,0(s2)
    800075c0:	00f4b023          	sd	a5,0(s1)
    800075c4:	00993023          	sd	s1,0(s2)
    800075c8:	fd4498e3          	bne	s1,s4,80007598 <kinit+0x70>
    800075cc:	03813083          	ld	ra,56(sp)
    800075d0:	03013403          	ld	s0,48(sp)
    800075d4:	02813483          	ld	s1,40(sp)
    800075d8:	02013903          	ld	s2,32(sp)
    800075dc:	01813983          	ld	s3,24(sp)
    800075e0:	01013a03          	ld	s4,16(sp)
    800075e4:	00813a83          	ld	s5,8(sp)
    800075e8:	04010113          	addi	sp,sp,64
    800075ec:	00008067          	ret
    800075f0:	00002517          	auipc	a0,0x2
    800075f4:	11850513          	addi	a0,a0,280 # 80009708 <digits+0x18>
    800075f8:	fffff097          	auipc	ra,0xfffff
    800075fc:	4b4080e7          	jalr	1204(ra) # 80006aac <panic>

0000000080007600 <freerange>:
    80007600:	fc010113          	addi	sp,sp,-64
    80007604:	000017b7          	lui	a5,0x1
    80007608:	02913423          	sd	s1,40(sp)
    8000760c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007610:	009504b3          	add	s1,a0,s1
    80007614:	fffff537          	lui	a0,0xfffff
    80007618:	02813823          	sd	s0,48(sp)
    8000761c:	02113c23          	sd	ra,56(sp)
    80007620:	03213023          	sd	s2,32(sp)
    80007624:	01313c23          	sd	s3,24(sp)
    80007628:	01413823          	sd	s4,16(sp)
    8000762c:	01513423          	sd	s5,8(sp)
    80007630:	01613023          	sd	s6,0(sp)
    80007634:	04010413          	addi	s0,sp,64
    80007638:	00a4f4b3          	and	s1,s1,a0
    8000763c:	00f487b3          	add	a5,s1,a5
    80007640:	06f5e463          	bltu	a1,a5,800076a8 <freerange+0xa8>
    80007644:	00005a97          	auipc	s5,0x5
    80007648:	55ca8a93          	addi	s5,s5,1372 # 8000cba0 <end>
    8000764c:	0954e263          	bltu	s1,s5,800076d0 <freerange+0xd0>
    80007650:	01100993          	li	s3,17
    80007654:	01b99993          	slli	s3,s3,0x1b
    80007658:	0734fc63          	bgeu	s1,s3,800076d0 <freerange+0xd0>
    8000765c:	00058a13          	mv	s4,a1
    80007660:	00004917          	auipc	s2,0x4
    80007664:	22090913          	addi	s2,s2,544 # 8000b880 <kmem>
    80007668:	00002b37          	lui	s6,0x2
    8000766c:	0140006f          	j	80007680 <freerange+0x80>
    80007670:	000017b7          	lui	a5,0x1
    80007674:	00f484b3          	add	s1,s1,a5
    80007678:	0554ec63          	bltu	s1,s5,800076d0 <freerange+0xd0>
    8000767c:	0534fa63          	bgeu	s1,s3,800076d0 <freerange+0xd0>
    80007680:	00001637          	lui	a2,0x1
    80007684:	00100593          	li	a1,1
    80007688:	00048513          	mv	a0,s1
    8000768c:	00000097          	auipc	ra,0x0
    80007690:	50c080e7          	jalr	1292(ra) # 80007b98 <__memset>
    80007694:	00093703          	ld	a4,0(s2)
    80007698:	016487b3          	add	a5,s1,s6
    8000769c:	00e4b023          	sd	a4,0(s1)
    800076a0:	00993023          	sd	s1,0(s2)
    800076a4:	fcfa76e3          	bgeu	s4,a5,80007670 <freerange+0x70>
    800076a8:	03813083          	ld	ra,56(sp)
    800076ac:	03013403          	ld	s0,48(sp)
    800076b0:	02813483          	ld	s1,40(sp)
    800076b4:	02013903          	ld	s2,32(sp)
    800076b8:	01813983          	ld	s3,24(sp)
    800076bc:	01013a03          	ld	s4,16(sp)
    800076c0:	00813a83          	ld	s5,8(sp)
    800076c4:	00013b03          	ld	s6,0(sp)
    800076c8:	04010113          	addi	sp,sp,64
    800076cc:	00008067          	ret
    800076d0:	00002517          	auipc	a0,0x2
    800076d4:	03850513          	addi	a0,a0,56 # 80009708 <digits+0x18>
    800076d8:	fffff097          	auipc	ra,0xfffff
    800076dc:	3d4080e7          	jalr	980(ra) # 80006aac <panic>

00000000800076e0 <kfree>:
    800076e0:	fe010113          	addi	sp,sp,-32
    800076e4:	00813823          	sd	s0,16(sp)
    800076e8:	00113c23          	sd	ra,24(sp)
    800076ec:	00913423          	sd	s1,8(sp)
    800076f0:	02010413          	addi	s0,sp,32
    800076f4:	03451793          	slli	a5,a0,0x34
    800076f8:	04079c63          	bnez	a5,80007750 <kfree+0x70>
    800076fc:	00005797          	auipc	a5,0x5
    80007700:	4a478793          	addi	a5,a5,1188 # 8000cba0 <end>
    80007704:	00050493          	mv	s1,a0
    80007708:	04f56463          	bltu	a0,a5,80007750 <kfree+0x70>
    8000770c:	01100793          	li	a5,17
    80007710:	01b79793          	slli	a5,a5,0x1b
    80007714:	02f57e63          	bgeu	a0,a5,80007750 <kfree+0x70>
    80007718:	00001637          	lui	a2,0x1
    8000771c:	00100593          	li	a1,1
    80007720:	00000097          	auipc	ra,0x0
    80007724:	478080e7          	jalr	1144(ra) # 80007b98 <__memset>
    80007728:	00004797          	auipc	a5,0x4
    8000772c:	15878793          	addi	a5,a5,344 # 8000b880 <kmem>
    80007730:	0007b703          	ld	a4,0(a5)
    80007734:	01813083          	ld	ra,24(sp)
    80007738:	01013403          	ld	s0,16(sp)
    8000773c:	00e4b023          	sd	a4,0(s1)
    80007740:	0097b023          	sd	s1,0(a5)
    80007744:	00813483          	ld	s1,8(sp)
    80007748:	02010113          	addi	sp,sp,32
    8000774c:	00008067          	ret
    80007750:	00002517          	auipc	a0,0x2
    80007754:	fb850513          	addi	a0,a0,-72 # 80009708 <digits+0x18>
    80007758:	fffff097          	auipc	ra,0xfffff
    8000775c:	354080e7          	jalr	852(ra) # 80006aac <panic>

0000000080007760 <kalloc>:
    80007760:	fe010113          	addi	sp,sp,-32
    80007764:	00813823          	sd	s0,16(sp)
    80007768:	00913423          	sd	s1,8(sp)
    8000776c:	00113c23          	sd	ra,24(sp)
    80007770:	02010413          	addi	s0,sp,32
    80007774:	00004797          	auipc	a5,0x4
    80007778:	10c78793          	addi	a5,a5,268 # 8000b880 <kmem>
    8000777c:	0007b483          	ld	s1,0(a5)
    80007780:	02048063          	beqz	s1,800077a0 <kalloc+0x40>
    80007784:	0004b703          	ld	a4,0(s1)
    80007788:	00001637          	lui	a2,0x1
    8000778c:	00500593          	li	a1,5
    80007790:	00048513          	mv	a0,s1
    80007794:	00e7b023          	sd	a4,0(a5)
    80007798:	00000097          	auipc	ra,0x0
    8000779c:	400080e7          	jalr	1024(ra) # 80007b98 <__memset>
    800077a0:	01813083          	ld	ra,24(sp)
    800077a4:	01013403          	ld	s0,16(sp)
    800077a8:	00048513          	mv	a0,s1
    800077ac:	00813483          	ld	s1,8(sp)
    800077b0:	02010113          	addi	sp,sp,32
    800077b4:	00008067          	ret

00000000800077b8 <initlock>:
    800077b8:	ff010113          	addi	sp,sp,-16
    800077bc:	00813423          	sd	s0,8(sp)
    800077c0:	01010413          	addi	s0,sp,16
    800077c4:	00813403          	ld	s0,8(sp)
    800077c8:	00b53423          	sd	a1,8(a0)
    800077cc:	00052023          	sw	zero,0(a0)
    800077d0:	00053823          	sd	zero,16(a0)
    800077d4:	01010113          	addi	sp,sp,16
    800077d8:	00008067          	ret

00000000800077dc <acquire>:
    800077dc:	fe010113          	addi	sp,sp,-32
    800077e0:	00813823          	sd	s0,16(sp)
    800077e4:	00913423          	sd	s1,8(sp)
    800077e8:	00113c23          	sd	ra,24(sp)
    800077ec:	01213023          	sd	s2,0(sp)
    800077f0:	02010413          	addi	s0,sp,32
    800077f4:	00050493          	mv	s1,a0
    800077f8:	10002973          	csrr	s2,sstatus
    800077fc:	100027f3          	csrr	a5,sstatus
    80007800:	ffd7f793          	andi	a5,a5,-3
    80007804:	10079073          	csrw	sstatus,a5
    80007808:	fffff097          	auipc	ra,0xfffff
    8000780c:	8ec080e7          	jalr	-1812(ra) # 800060f4 <mycpu>
    80007810:	07852783          	lw	a5,120(a0)
    80007814:	06078e63          	beqz	a5,80007890 <acquire+0xb4>
    80007818:	fffff097          	auipc	ra,0xfffff
    8000781c:	8dc080e7          	jalr	-1828(ra) # 800060f4 <mycpu>
    80007820:	07852783          	lw	a5,120(a0)
    80007824:	0004a703          	lw	a4,0(s1)
    80007828:	0017879b          	addiw	a5,a5,1
    8000782c:	06f52c23          	sw	a5,120(a0)
    80007830:	04071063          	bnez	a4,80007870 <acquire+0x94>
    80007834:	00100713          	li	a4,1
    80007838:	00070793          	mv	a5,a4
    8000783c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007840:	0007879b          	sext.w	a5,a5
    80007844:	fe079ae3          	bnez	a5,80007838 <acquire+0x5c>
    80007848:	0ff0000f          	fence
    8000784c:	fffff097          	auipc	ra,0xfffff
    80007850:	8a8080e7          	jalr	-1880(ra) # 800060f4 <mycpu>
    80007854:	01813083          	ld	ra,24(sp)
    80007858:	01013403          	ld	s0,16(sp)
    8000785c:	00a4b823          	sd	a0,16(s1)
    80007860:	00013903          	ld	s2,0(sp)
    80007864:	00813483          	ld	s1,8(sp)
    80007868:	02010113          	addi	sp,sp,32
    8000786c:	00008067          	ret
    80007870:	0104b903          	ld	s2,16(s1)
    80007874:	fffff097          	auipc	ra,0xfffff
    80007878:	880080e7          	jalr	-1920(ra) # 800060f4 <mycpu>
    8000787c:	faa91ce3          	bne	s2,a0,80007834 <acquire+0x58>
    80007880:	00002517          	auipc	a0,0x2
    80007884:	e9050513          	addi	a0,a0,-368 # 80009710 <digits+0x20>
    80007888:	fffff097          	auipc	ra,0xfffff
    8000788c:	224080e7          	jalr	548(ra) # 80006aac <panic>
    80007890:	00195913          	srli	s2,s2,0x1
    80007894:	fffff097          	auipc	ra,0xfffff
    80007898:	860080e7          	jalr	-1952(ra) # 800060f4 <mycpu>
    8000789c:	00197913          	andi	s2,s2,1
    800078a0:	07252e23          	sw	s2,124(a0)
    800078a4:	f75ff06f          	j	80007818 <acquire+0x3c>

00000000800078a8 <release>:
    800078a8:	fe010113          	addi	sp,sp,-32
    800078ac:	00813823          	sd	s0,16(sp)
    800078b0:	00113c23          	sd	ra,24(sp)
    800078b4:	00913423          	sd	s1,8(sp)
    800078b8:	01213023          	sd	s2,0(sp)
    800078bc:	02010413          	addi	s0,sp,32
    800078c0:	00052783          	lw	a5,0(a0)
    800078c4:	00079a63          	bnez	a5,800078d8 <release+0x30>
    800078c8:	00002517          	auipc	a0,0x2
    800078cc:	e5050513          	addi	a0,a0,-432 # 80009718 <digits+0x28>
    800078d0:	fffff097          	auipc	ra,0xfffff
    800078d4:	1dc080e7          	jalr	476(ra) # 80006aac <panic>
    800078d8:	01053903          	ld	s2,16(a0)
    800078dc:	00050493          	mv	s1,a0
    800078e0:	fffff097          	auipc	ra,0xfffff
    800078e4:	814080e7          	jalr	-2028(ra) # 800060f4 <mycpu>
    800078e8:	fea910e3          	bne	s2,a0,800078c8 <release+0x20>
    800078ec:	0004b823          	sd	zero,16(s1)
    800078f0:	0ff0000f          	fence
    800078f4:	0f50000f          	fence	iorw,ow
    800078f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800078fc:	ffffe097          	auipc	ra,0xffffe
    80007900:	7f8080e7          	jalr	2040(ra) # 800060f4 <mycpu>
    80007904:	100027f3          	csrr	a5,sstatus
    80007908:	0027f793          	andi	a5,a5,2
    8000790c:	04079a63          	bnez	a5,80007960 <release+0xb8>
    80007910:	07852783          	lw	a5,120(a0)
    80007914:	02f05e63          	blez	a5,80007950 <release+0xa8>
    80007918:	fff7871b          	addiw	a4,a5,-1
    8000791c:	06e52c23          	sw	a4,120(a0)
    80007920:	00071c63          	bnez	a4,80007938 <release+0x90>
    80007924:	07c52783          	lw	a5,124(a0)
    80007928:	00078863          	beqz	a5,80007938 <release+0x90>
    8000792c:	100027f3          	csrr	a5,sstatus
    80007930:	0027e793          	ori	a5,a5,2
    80007934:	10079073          	csrw	sstatus,a5
    80007938:	01813083          	ld	ra,24(sp)
    8000793c:	01013403          	ld	s0,16(sp)
    80007940:	00813483          	ld	s1,8(sp)
    80007944:	00013903          	ld	s2,0(sp)
    80007948:	02010113          	addi	sp,sp,32
    8000794c:	00008067          	ret
    80007950:	00002517          	auipc	a0,0x2
    80007954:	de850513          	addi	a0,a0,-536 # 80009738 <digits+0x48>
    80007958:	fffff097          	auipc	ra,0xfffff
    8000795c:	154080e7          	jalr	340(ra) # 80006aac <panic>
    80007960:	00002517          	auipc	a0,0x2
    80007964:	dc050513          	addi	a0,a0,-576 # 80009720 <digits+0x30>
    80007968:	fffff097          	auipc	ra,0xfffff
    8000796c:	144080e7          	jalr	324(ra) # 80006aac <panic>

0000000080007970 <holding>:
    80007970:	00052783          	lw	a5,0(a0)
    80007974:	00079663          	bnez	a5,80007980 <holding+0x10>
    80007978:	00000513          	li	a0,0
    8000797c:	00008067          	ret
    80007980:	fe010113          	addi	sp,sp,-32
    80007984:	00813823          	sd	s0,16(sp)
    80007988:	00913423          	sd	s1,8(sp)
    8000798c:	00113c23          	sd	ra,24(sp)
    80007990:	02010413          	addi	s0,sp,32
    80007994:	01053483          	ld	s1,16(a0)
    80007998:	ffffe097          	auipc	ra,0xffffe
    8000799c:	75c080e7          	jalr	1884(ra) # 800060f4 <mycpu>
    800079a0:	01813083          	ld	ra,24(sp)
    800079a4:	01013403          	ld	s0,16(sp)
    800079a8:	40a48533          	sub	a0,s1,a0
    800079ac:	00153513          	seqz	a0,a0
    800079b0:	00813483          	ld	s1,8(sp)
    800079b4:	02010113          	addi	sp,sp,32
    800079b8:	00008067          	ret

00000000800079bc <push_off>:
    800079bc:	fe010113          	addi	sp,sp,-32
    800079c0:	00813823          	sd	s0,16(sp)
    800079c4:	00113c23          	sd	ra,24(sp)
    800079c8:	00913423          	sd	s1,8(sp)
    800079cc:	02010413          	addi	s0,sp,32
    800079d0:	100024f3          	csrr	s1,sstatus
    800079d4:	100027f3          	csrr	a5,sstatus
    800079d8:	ffd7f793          	andi	a5,a5,-3
    800079dc:	10079073          	csrw	sstatus,a5
    800079e0:	ffffe097          	auipc	ra,0xffffe
    800079e4:	714080e7          	jalr	1812(ra) # 800060f4 <mycpu>
    800079e8:	07852783          	lw	a5,120(a0)
    800079ec:	02078663          	beqz	a5,80007a18 <push_off+0x5c>
    800079f0:	ffffe097          	auipc	ra,0xffffe
    800079f4:	704080e7          	jalr	1796(ra) # 800060f4 <mycpu>
    800079f8:	07852783          	lw	a5,120(a0)
    800079fc:	01813083          	ld	ra,24(sp)
    80007a00:	01013403          	ld	s0,16(sp)
    80007a04:	0017879b          	addiw	a5,a5,1
    80007a08:	06f52c23          	sw	a5,120(a0)
    80007a0c:	00813483          	ld	s1,8(sp)
    80007a10:	02010113          	addi	sp,sp,32
    80007a14:	00008067          	ret
    80007a18:	0014d493          	srli	s1,s1,0x1
    80007a1c:	ffffe097          	auipc	ra,0xffffe
    80007a20:	6d8080e7          	jalr	1752(ra) # 800060f4 <mycpu>
    80007a24:	0014f493          	andi	s1,s1,1
    80007a28:	06952e23          	sw	s1,124(a0)
    80007a2c:	fc5ff06f          	j	800079f0 <push_off+0x34>

0000000080007a30 <pop_off>:
    80007a30:	ff010113          	addi	sp,sp,-16
    80007a34:	00813023          	sd	s0,0(sp)
    80007a38:	00113423          	sd	ra,8(sp)
    80007a3c:	01010413          	addi	s0,sp,16
    80007a40:	ffffe097          	auipc	ra,0xffffe
    80007a44:	6b4080e7          	jalr	1716(ra) # 800060f4 <mycpu>
    80007a48:	100027f3          	csrr	a5,sstatus
    80007a4c:	0027f793          	andi	a5,a5,2
    80007a50:	04079663          	bnez	a5,80007a9c <pop_off+0x6c>
    80007a54:	07852783          	lw	a5,120(a0)
    80007a58:	02f05a63          	blez	a5,80007a8c <pop_off+0x5c>
    80007a5c:	fff7871b          	addiw	a4,a5,-1
    80007a60:	06e52c23          	sw	a4,120(a0)
    80007a64:	00071c63          	bnez	a4,80007a7c <pop_off+0x4c>
    80007a68:	07c52783          	lw	a5,124(a0)
    80007a6c:	00078863          	beqz	a5,80007a7c <pop_off+0x4c>
    80007a70:	100027f3          	csrr	a5,sstatus
    80007a74:	0027e793          	ori	a5,a5,2
    80007a78:	10079073          	csrw	sstatus,a5
    80007a7c:	00813083          	ld	ra,8(sp)
    80007a80:	00013403          	ld	s0,0(sp)
    80007a84:	01010113          	addi	sp,sp,16
    80007a88:	00008067          	ret
    80007a8c:	00002517          	auipc	a0,0x2
    80007a90:	cac50513          	addi	a0,a0,-852 # 80009738 <digits+0x48>
    80007a94:	fffff097          	auipc	ra,0xfffff
    80007a98:	018080e7          	jalr	24(ra) # 80006aac <panic>
    80007a9c:	00002517          	auipc	a0,0x2
    80007aa0:	c8450513          	addi	a0,a0,-892 # 80009720 <digits+0x30>
    80007aa4:	fffff097          	auipc	ra,0xfffff
    80007aa8:	008080e7          	jalr	8(ra) # 80006aac <panic>

0000000080007aac <push_on>:
    80007aac:	fe010113          	addi	sp,sp,-32
    80007ab0:	00813823          	sd	s0,16(sp)
    80007ab4:	00113c23          	sd	ra,24(sp)
    80007ab8:	00913423          	sd	s1,8(sp)
    80007abc:	02010413          	addi	s0,sp,32
    80007ac0:	100024f3          	csrr	s1,sstatus
    80007ac4:	100027f3          	csrr	a5,sstatus
    80007ac8:	0027e793          	ori	a5,a5,2
    80007acc:	10079073          	csrw	sstatus,a5
    80007ad0:	ffffe097          	auipc	ra,0xffffe
    80007ad4:	624080e7          	jalr	1572(ra) # 800060f4 <mycpu>
    80007ad8:	07852783          	lw	a5,120(a0)
    80007adc:	02078663          	beqz	a5,80007b08 <push_on+0x5c>
    80007ae0:	ffffe097          	auipc	ra,0xffffe
    80007ae4:	614080e7          	jalr	1556(ra) # 800060f4 <mycpu>
    80007ae8:	07852783          	lw	a5,120(a0)
    80007aec:	01813083          	ld	ra,24(sp)
    80007af0:	01013403          	ld	s0,16(sp)
    80007af4:	0017879b          	addiw	a5,a5,1
    80007af8:	06f52c23          	sw	a5,120(a0)
    80007afc:	00813483          	ld	s1,8(sp)
    80007b00:	02010113          	addi	sp,sp,32
    80007b04:	00008067          	ret
    80007b08:	0014d493          	srli	s1,s1,0x1
    80007b0c:	ffffe097          	auipc	ra,0xffffe
    80007b10:	5e8080e7          	jalr	1512(ra) # 800060f4 <mycpu>
    80007b14:	0014f493          	andi	s1,s1,1
    80007b18:	06952e23          	sw	s1,124(a0)
    80007b1c:	fc5ff06f          	j	80007ae0 <push_on+0x34>

0000000080007b20 <pop_on>:
    80007b20:	ff010113          	addi	sp,sp,-16
    80007b24:	00813023          	sd	s0,0(sp)
    80007b28:	00113423          	sd	ra,8(sp)
    80007b2c:	01010413          	addi	s0,sp,16
    80007b30:	ffffe097          	auipc	ra,0xffffe
    80007b34:	5c4080e7          	jalr	1476(ra) # 800060f4 <mycpu>
    80007b38:	100027f3          	csrr	a5,sstatus
    80007b3c:	0027f793          	andi	a5,a5,2
    80007b40:	04078463          	beqz	a5,80007b88 <pop_on+0x68>
    80007b44:	07852783          	lw	a5,120(a0)
    80007b48:	02f05863          	blez	a5,80007b78 <pop_on+0x58>
    80007b4c:	fff7879b          	addiw	a5,a5,-1
    80007b50:	06f52c23          	sw	a5,120(a0)
    80007b54:	07853783          	ld	a5,120(a0)
    80007b58:	00079863          	bnez	a5,80007b68 <pop_on+0x48>
    80007b5c:	100027f3          	csrr	a5,sstatus
    80007b60:	ffd7f793          	andi	a5,a5,-3
    80007b64:	10079073          	csrw	sstatus,a5
    80007b68:	00813083          	ld	ra,8(sp)
    80007b6c:	00013403          	ld	s0,0(sp)
    80007b70:	01010113          	addi	sp,sp,16
    80007b74:	00008067          	ret
    80007b78:	00002517          	auipc	a0,0x2
    80007b7c:	be850513          	addi	a0,a0,-1048 # 80009760 <digits+0x70>
    80007b80:	fffff097          	auipc	ra,0xfffff
    80007b84:	f2c080e7          	jalr	-212(ra) # 80006aac <panic>
    80007b88:	00002517          	auipc	a0,0x2
    80007b8c:	bb850513          	addi	a0,a0,-1096 # 80009740 <digits+0x50>
    80007b90:	fffff097          	auipc	ra,0xfffff
    80007b94:	f1c080e7          	jalr	-228(ra) # 80006aac <panic>

0000000080007b98 <__memset>:
    80007b98:	ff010113          	addi	sp,sp,-16
    80007b9c:	00813423          	sd	s0,8(sp)
    80007ba0:	01010413          	addi	s0,sp,16
    80007ba4:	1a060e63          	beqz	a2,80007d60 <__memset+0x1c8>
    80007ba8:	40a007b3          	neg	a5,a0
    80007bac:	0077f793          	andi	a5,a5,7
    80007bb0:	00778693          	addi	a3,a5,7
    80007bb4:	00b00813          	li	a6,11
    80007bb8:	0ff5f593          	andi	a1,a1,255
    80007bbc:	fff6071b          	addiw	a4,a2,-1
    80007bc0:	1b06e663          	bltu	a3,a6,80007d6c <__memset+0x1d4>
    80007bc4:	1cd76463          	bltu	a4,a3,80007d8c <__memset+0x1f4>
    80007bc8:	1a078e63          	beqz	a5,80007d84 <__memset+0x1ec>
    80007bcc:	00b50023          	sb	a1,0(a0)
    80007bd0:	00100713          	li	a4,1
    80007bd4:	1ae78463          	beq	a5,a4,80007d7c <__memset+0x1e4>
    80007bd8:	00b500a3          	sb	a1,1(a0)
    80007bdc:	00200713          	li	a4,2
    80007be0:	1ae78a63          	beq	a5,a4,80007d94 <__memset+0x1fc>
    80007be4:	00b50123          	sb	a1,2(a0)
    80007be8:	00300713          	li	a4,3
    80007bec:	18e78463          	beq	a5,a4,80007d74 <__memset+0x1dc>
    80007bf0:	00b501a3          	sb	a1,3(a0)
    80007bf4:	00400713          	li	a4,4
    80007bf8:	1ae78263          	beq	a5,a4,80007d9c <__memset+0x204>
    80007bfc:	00b50223          	sb	a1,4(a0)
    80007c00:	00500713          	li	a4,5
    80007c04:	1ae78063          	beq	a5,a4,80007da4 <__memset+0x20c>
    80007c08:	00b502a3          	sb	a1,5(a0)
    80007c0c:	00700713          	li	a4,7
    80007c10:	18e79e63          	bne	a5,a4,80007dac <__memset+0x214>
    80007c14:	00b50323          	sb	a1,6(a0)
    80007c18:	00700e93          	li	t4,7
    80007c1c:	00859713          	slli	a4,a1,0x8
    80007c20:	00e5e733          	or	a4,a1,a4
    80007c24:	01059e13          	slli	t3,a1,0x10
    80007c28:	01c76e33          	or	t3,a4,t3
    80007c2c:	01859313          	slli	t1,a1,0x18
    80007c30:	006e6333          	or	t1,t3,t1
    80007c34:	02059893          	slli	a7,a1,0x20
    80007c38:	40f60e3b          	subw	t3,a2,a5
    80007c3c:	011368b3          	or	a7,t1,a7
    80007c40:	02859813          	slli	a6,a1,0x28
    80007c44:	0108e833          	or	a6,a7,a6
    80007c48:	03059693          	slli	a3,a1,0x30
    80007c4c:	003e589b          	srliw	a7,t3,0x3
    80007c50:	00d866b3          	or	a3,a6,a3
    80007c54:	03859713          	slli	a4,a1,0x38
    80007c58:	00389813          	slli	a6,a7,0x3
    80007c5c:	00f507b3          	add	a5,a0,a5
    80007c60:	00e6e733          	or	a4,a3,a4
    80007c64:	000e089b          	sext.w	a7,t3
    80007c68:	00f806b3          	add	a3,a6,a5
    80007c6c:	00e7b023          	sd	a4,0(a5)
    80007c70:	00878793          	addi	a5,a5,8
    80007c74:	fed79ce3          	bne	a5,a3,80007c6c <__memset+0xd4>
    80007c78:	ff8e7793          	andi	a5,t3,-8
    80007c7c:	0007871b          	sext.w	a4,a5
    80007c80:	01d787bb          	addw	a5,a5,t4
    80007c84:	0ce88e63          	beq	a7,a4,80007d60 <__memset+0x1c8>
    80007c88:	00f50733          	add	a4,a0,a5
    80007c8c:	00b70023          	sb	a1,0(a4)
    80007c90:	0017871b          	addiw	a4,a5,1
    80007c94:	0cc77663          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007c98:	00e50733          	add	a4,a0,a4
    80007c9c:	00b70023          	sb	a1,0(a4)
    80007ca0:	0027871b          	addiw	a4,a5,2
    80007ca4:	0ac77e63          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007ca8:	00e50733          	add	a4,a0,a4
    80007cac:	00b70023          	sb	a1,0(a4)
    80007cb0:	0037871b          	addiw	a4,a5,3
    80007cb4:	0ac77663          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007cb8:	00e50733          	add	a4,a0,a4
    80007cbc:	00b70023          	sb	a1,0(a4)
    80007cc0:	0047871b          	addiw	a4,a5,4
    80007cc4:	08c77e63          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007cc8:	00e50733          	add	a4,a0,a4
    80007ccc:	00b70023          	sb	a1,0(a4)
    80007cd0:	0057871b          	addiw	a4,a5,5
    80007cd4:	08c77663          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007cd8:	00e50733          	add	a4,a0,a4
    80007cdc:	00b70023          	sb	a1,0(a4)
    80007ce0:	0067871b          	addiw	a4,a5,6
    80007ce4:	06c77e63          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007ce8:	00e50733          	add	a4,a0,a4
    80007cec:	00b70023          	sb	a1,0(a4)
    80007cf0:	0077871b          	addiw	a4,a5,7
    80007cf4:	06c77663          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007cf8:	00e50733          	add	a4,a0,a4
    80007cfc:	00b70023          	sb	a1,0(a4)
    80007d00:	0087871b          	addiw	a4,a5,8
    80007d04:	04c77e63          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007d08:	00e50733          	add	a4,a0,a4
    80007d0c:	00b70023          	sb	a1,0(a4)
    80007d10:	0097871b          	addiw	a4,a5,9
    80007d14:	04c77663          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007d18:	00e50733          	add	a4,a0,a4
    80007d1c:	00b70023          	sb	a1,0(a4)
    80007d20:	00a7871b          	addiw	a4,a5,10
    80007d24:	02c77e63          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007d28:	00e50733          	add	a4,a0,a4
    80007d2c:	00b70023          	sb	a1,0(a4)
    80007d30:	00b7871b          	addiw	a4,a5,11
    80007d34:	02c77663          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007d38:	00e50733          	add	a4,a0,a4
    80007d3c:	00b70023          	sb	a1,0(a4)
    80007d40:	00c7871b          	addiw	a4,a5,12
    80007d44:	00c77e63          	bgeu	a4,a2,80007d60 <__memset+0x1c8>
    80007d48:	00e50733          	add	a4,a0,a4
    80007d4c:	00b70023          	sb	a1,0(a4)
    80007d50:	00d7879b          	addiw	a5,a5,13
    80007d54:	00c7f663          	bgeu	a5,a2,80007d60 <__memset+0x1c8>
    80007d58:	00f507b3          	add	a5,a0,a5
    80007d5c:	00b78023          	sb	a1,0(a5)
    80007d60:	00813403          	ld	s0,8(sp)
    80007d64:	01010113          	addi	sp,sp,16
    80007d68:	00008067          	ret
    80007d6c:	00b00693          	li	a3,11
    80007d70:	e55ff06f          	j	80007bc4 <__memset+0x2c>
    80007d74:	00300e93          	li	t4,3
    80007d78:	ea5ff06f          	j	80007c1c <__memset+0x84>
    80007d7c:	00100e93          	li	t4,1
    80007d80:	e9dff06f          	j	80007c1c <__memset+0x84>
    80007d84:	00000e93          	li	t4,0
    80007d88:	e95ff06f          	j	80007c1c <__memset+0x84>
    80007d8c:	00000793          	li	a5,0
    80007d90:	ef9ff06f          	j	80007c88 <__memset+0xf0>
    80007d94:	00200e93          	li	t4,2
    80007d98:	e85ff06f          	j	80007c1c <__memset+0x84>
    80007d9c:	00400e93          	li	t4,4
    80007da0:	e7dff06f          	j	80007c1c <__memset+0x84>
    80007da4:	00500e93          	li	t4,5
    80007da8:	e75ff06f          	j	80007c1c <__memset+0x84>
    80007dac:	00600e93          	li	t4,6
    80007db0:	e6dff06f          	j	80007c1c <__memset+0x84>

0000000080007db4 <__memmove>:
    80007db4:	ff010113          	addi	sp,sp,-16
    80007db8:	00813423          	sd	s0,8(sp)
    80007dbc:	01010413          	addi	s0,sp,16
    80007dc0:	0e060863          	beqz	a2,80007eb0 <__memmove+0xfc>
    80007dc4:	fff6069b          	addiw	a3,a2,-1
    80007dc8:	0006881b          	sext.w	a6,a3
    80007dcc:	0ea5e863          	bltu	a1,a0,80007ebc <__memmove+0x108>
    80007dd0:	00758713          	addi	a4,a1,7
    80007dd4:	00a5e7b3          	or	a5,a1,a0
    80007dd8:	40a70733          	sub	a4,a4,a0
    80007ddc:	0077f793          	andi	a5,a5,7
    80007de0:	00f73713          	sltiu	a4,a4,15
    80007de4:	00174713          	xori	a4,a4,1
    80007de8:	0017b793          	seqz	a5,a5
    80007dec:	00e7f7b3          	and	a5,a5,a4
    80007df0:	10078863          	beqz	a5,80007f00 <__memmove+0x14c>
    80007df4:	00900793          	li	a5,9
    80007df8:	1107f463          	bgeu	a5,a6,80007f00 <__memmove+0x14c>
    80007dfc:	0036581b          	srliw	a6,a2,0x3
    80007e00:	fff8081b          	addiw	a6,a6,-1
    80007e04:	02081813          	slli	a6,a6,0x20
    80007e08:	01d85893          	srli	a7,a6,0x1d
    80007e0c:	00858813          	addi	a6,a1,8
    80007e10:	00058793          	mv	a5,a1
    80007e14:	00050713          	mv	a4,a0
    80007e18:	01088833          	add	a6,a7,a6
    80007e1c:	0007b883          	ld	a7,0(a5)
    80007e20:	00878793          	addi	a5,a5,8
    80007e24:	00870713          	addi	a4,a4,8
    80007e28:	ff173c23          	sd	a7,-8(a4)
    80007e2c:	ff0798e3          	bne	a5,a6,80007e1c <__memmove+0x68>
    80007e30:	ff867713          	andi	a4,a2,-8
    80007e34:	02071793          	slli	a5,a4,0x20
    80007e38:	0207d793          	srli	a5,a5,0x20
    80007e3c:	00f585b3          	add	a1,a1,a5
    80007e40:	40e686bb          	subw	a3,a3,a4
    80007e44:	00f507b3          	add	a5,a0,a5
    80007e48:	06e60463          	beq	a2,a4,80007eb0 <__memmove+0xfc>
    80007e4c:	0005c703          	lbu	a4,0(a1)
    80007e50:	00e78023          	sb	a4,0(a5)
    80007e54:	04068e63          	beqz	a3,80007eb0 <__memmove+0xfc>
    80007e58:	0015c603          	lbu	a2,1(a1)
    80007e5c:	00100713          	li	a4,1
    80007e60:	00c780a3          	sb	a2,1(a5)
    80007e64:	04e68663          	beq	a3,a4,80007eb0 <__memmove+0xfc>
    80007e68:	0025c603          	lbu	a2,2(a1)
    80007e6c:	00200713          	li	a4,2
    80007e70:	00c78123          	sb	a2,2(a5)
    80007e74:	02e68e63          	beq	a3,a4,80007eb0 <__memmove+0xfc>
    80007e78:	0035c603          	lbu	a2,3(a1)
    80007e7c:	00300713          	li	a4,3
    80007e80:	00c781a3          	sb	a2,3(a5)
    80007e84:	02e68663          	beq	a3,a4,80007eb0 <__memmove+0xfc>
    80007e88:	0045c603          	lbu	a2,4(a1)
    80007e8c:	00400713          	li	a4,4
    80007e90:	00c78223          	sb	a2,4(a5)
    80007e94:	00e68e63          	beq	a3,a4,80007eb0 <__memmove+0xfc>
    80007e98:	0055c603          	lbu	a2,5(a1)
    80007e9c:	00500713          	li	a4,5
    80007ea0:	00c782a3          	sb	a2,5(a5)
    80007ea4:	00e68663          	beq	a3,a4,80007eb0 <__memmove+0xfc>
    80007ea8:	0065c703          	lbu	a4,6(a1)
    80007eac:	00e78323          	sb	a4,6(a5)
    80007eb0:	00813403          	ld	s0,8(sp)
    80007eb4:	01010113          	addi	sp,sp,16
    80007eb8:	00008067          	ret
    80007ebc:	02061713          	slli	a4,a2,0x20
    80007ec0:	02075713          	srli	a4,a4,0x20
    80007ec4:	00e587b3          	add	a5,a1,a4
    80007ec8:	f0f574e3          	bgeu	a0,a5,80007dd0 <__memmove+0x1c>
    80007ecc:	02069613          	slli	a2,a3,0x20
    80007ed0:	02065613          	srli	a2,a2,0x20
    80007ed4:	fff64613          	not	a2,a2
    80007ed8:	00e50733          	add	a4,a0,a4
    80007edc:	00c78633          	add	a2,a5,a2
    80007ee0:	fff7c683          	lbu	a3,-1(a5)
    80007ee4:	fff78793          	addi	a5,a5,-1
    80007ee8:	fff70713          	addi	a4,a4,-1
    80007eec:	00d70023          	sb	a3,0(a4)
    80007ef0:	fec798e3          	bne	a5,a2,80007ee0 <__memmove+0x12c>
    80007ef4:	00813403          	ld	s0,8(sp)
    80007ef8:	01010113          	addi	sp,sp,16
    80007efc:	00008067          	ret
    80007f00:	02069713          	slli	a4,a3,0x20
    80007f04:	02075713          	srli	a4,a4,0x20
    80007f08:	00170713          	addi	a4,a4,1
    80007f0c:	00e50733          	add	a4,a0,a4
    80007f10:	00050793          	mv	a5,a0
    80007f14:	0005c683          	lbu	a3,0(a1)
    80007f18:	00178793          	addi	a5,a5,1
    80007f1c:	00158593          	addi	a1,a1,1
    80007f20:	fed78fa3          	sb	a3,-1(a5)
    80007f24:	fee798e3          	bne	a5,a4,80007f14 <__memmove+0x160>
    80007f28:	f89ff06f          	j	80007eb0 <__memmove+0xfc>

0000000080007f2c <__putc>:
    80007f2c:	fe010113          	addi	sp,sp,-32
    80007f30:	00813823          	sd	s0,16(sp)
    80007f34:	00113c23          	sd	ra,24(sp)
    80007f38:	02010413          	addi	s0,sp,32
    80007f3c:	00050793          	mv	a5,a0
    80007f40:	fef40593          	addi	a1,s0,-17
    80007f44:	00100613          	li	a2,1
    80007f48:	00000513          	li	a0,0
    80007f4c:	fef407a3          	sb	a5,-17(s0)
    80007f50:	fffff097          	auipc	ra,0xfffff
    80007f54:	b3c080e7          	jalr	-1220(ra) # 80006a8c <console_write>
    80007f58:	01813083          	ld	ra,24(sp)
    80007f5c:	01013403          	ld	s0,16(sp)
    80007f60:	02010113          	addi	sp,sp,32
    80007f64:	00008067          	ret

0000000080007f68 <__getc>:
    80007f68:	fe010113          	addi	sp,sp,-32
    80007f6c:	00813823          	sd	s0,16(sp)
    80007f70:	00113c23          	sd	ra,24(sp)
    80007f74:	02010413          	addi	s0,sp,32
    80007f78:	fe840593          	addi	a1,s0,-24
    80007f7c:	00100613          	li	a2,1
    80007f80:	00000513          	li	a0,0
    80007f84:	fffff097          	auipc	ra,0xfffff
    80007f88:	ae8080e7          	jalr	-1304(ra) # 80006a6c <console_read>
    80007f8c:	fe844503          	lbu	a0,-24(s0)
    80007f90:	01813083          	ld	ra,24(sp)
    80007f94:	01013403          	ld	s0,16(sp)
    80007f98:	02010113          	addi	sp,sp,32
    80007f9c:	00008067          	ret

0000000080007fa0 <console_handler>:
    80007fa0:	fe010113          	addi	sp,sp,-32
    80007fa4:	00813823          	sd	s0,16(sp)
    80007fa8:	00113c23          	sd	ra,24(sp)
    80007fac:	00913423          	sd	s1,8(sp)
    80007fb0:	02010413          	addi	s0,sp,32
    80007fb4:	14202773          	csrr	a4,scause
    80007fb8:	100027f3          	csrr	a5,sstatus
    80007fbc:	0027f793          	andi	a5,a5,2
    80007fc0:	06079e63          	bnez	a5,8000803c <console_handler+0x9c>
    80007fc4:	00074c63          	bltz	a4,80007fdc <console_handler+0x3c>
    80007fc8:	01813083          	ld	ra,24(sp)
    80007fcc:	01013403          	ld	s0,16(sp)
    80007fd0:	00813483          	ld	s1,8(sp)
    80007fd4:	02010113          	addi	sp,sp,32
    80007fd8:	00008067          	ret
    80007fdc:	0ff77713          	andi	a4,a4,255
    80007fe0:	00900793          	li	a5,9
    80007fe4:	fef712e3          	bne	a4,a5,80007fc8 <console_handler+0x28>
    80007fe8:	ffffe097          	auipc	ra,0xffffe
    80007fec:	6dc080e7          	jalr	1756(ra) # 800066c4 <plic_claim>
    80007ff0:	00a00793          	li	a5,10
    80007ff4:	00050493          	mv	s1,a0
    80007ff8:	02f50c63          	beq	a0,a5,80008030 <console_handler+0x90>
    80007ffc:	fc0506e3          	beqz	a0,80007fc8 <console_handler+0x28>
    80008000:	00050593          	mv	a1,a0
    80008004:	00001517          	auipc	a0,0x1
    80008008:	66450513          	addi	a0,a0,1636 # 80009668 <CONSOLE_STATUS+0x658>
    8000800c:	fffff097          	auipc	ra,0xfffff
    80008010:	afc080e7          	jalr	-1284(ra) # 80006b08 <__printf>
    80008014:	01013403          	ld	s0,16(sp)
    80008018:	01813083          	ld	ra,24(sp)
    8000801c:	00048513          	mv	a0,s1
    80008020:	00813483          	ld	s1,8(sp)
    80008024:	02010113          	addi	sp,sp,32
    80008028:	ffffe317          	auipc	t1,0xffffe
    8000802c:	6d430067          	jr	1748(t1) # 800066fc <plic_complete>
    80008030:	fffff097          	auipc	ra,0xfffff
    80008034:	3e0080e7          	jalr	992(ra) # 80007410 <uartintr>
    80008038:	fddff06f          	j	80008014 <console_handler+0x74>
    8000803c:	00001517          	auipc	a0,0x1
    80008040:	72c50513          	addi	a0,a0,1836 # 80009768 <digits+0x78>
    80008044:	fffff097          	auipc	ra,0xfffff
    80008048:	a68080e7          	jalr	-1432(ra) # 80006aac <panic>
	...
