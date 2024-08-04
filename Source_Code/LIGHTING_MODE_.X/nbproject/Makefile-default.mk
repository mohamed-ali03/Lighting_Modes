#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LIGHTING_MODE_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/LIGHTING_MODE_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ECU_LAYER/LED/Led.c MCAL_LAYER/Interrupt/External_Interrupt.c MCAL_LAYER/Interrupt/Interrupt_Manager.c MCAL_LAYER/Device_Config.c MCAL_LAYER/GPIO_hal.c Lighting_Mode.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_LAYER/LED/Led.p1 ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1 ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1 ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1 ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1 ${OBJECTDIR}/Lighting_Mode.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_LAYER/LED/Led.p1.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1.d ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1.d ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1.d ${OBJECTDIR}/Lighting_Mode.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_LAYER/LED/Led.p1 ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1 ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1 ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1 ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1 ${OBJECTDIR}/Lighting_Mode.p1

# Source Files
SOURCEFILES=ECU_LAYER/LED/Led.c MCAL_LAYER/Interrupt/External_Interrupt.c MCAL_LAYER/Interrupt/Interrupt_Manager.c MCAL_LAYER/Device_Config.c MCAL_LAYER/GPIO_hal.c Lighting_Mode.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/LIGHTING_MODE_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECU_LAYER/LED/Led.p1: ECU_LAYER/LED/Led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/LED" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/LED/Led.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/LED/Led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/LED/Led.p1 ECU_LAYER/LED/Led.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/LED/Led.d ${OBJECTDIR}/ECU_LAYER/LED/Led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/LED/Led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1: MCAL_LAYER/Interrupt/External_Interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1 MCAL_LAYER/Interrupt/External_Interrupt.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1: MCAL_LAYER/Interrupt/Interrupt_Manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1 MCAL_LAYER/Interrupt/Interrupt_Manager.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Device_Config.p1: MCAL_LAYER/Device_Config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1 MCAL_LAYER/Device_Config.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Device_Config.d ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1: MCAL_LAYER/GPIO_hal.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1 MCAL_LAYER/GPIO_hal.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.d ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Lighting_Mode.p1: Lighting_Mode.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Lighting_Mode.p1.d 
	@${RM} ${OBJECTDIR}/Lighting_Mode.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Lighting_Mode.p1 Lighting_Mode.c 
	@-${MV} ${OBJECTDIR}/Lighting_Mode.d ${OBJECTDIR}/Lighting_Mode.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Lighting_Mode.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/ECU_LAYER/LED/Led.p1: ECU_LAYER/LED/Led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_LAYER/LED" 
	@${RM} ${OBJECTDIR}/ECU_LAYER/LED/Led.p1.d 
	@${RM} ${OBJECTDIR}/ECU_LAYER/LED/Led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_LAYER/LED/Led.p1 ECU_LAYER/LED/Led.c 
	@-${MV} ${OBJECTDIR}/ECU_LAYER/LED/Led.d ${OBJECTDIR}/ECU_LAYER/LED/Led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_LAYER/LED/Led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1: MCAL_LAYER/Interrupt/External_Interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1 MCAL_LAYER/Interrupt/External_Interrupt.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Interrupt/External_Interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1: MCAL_LAYER/Interrupt/Interrupt_Manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER/Interrupt" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1 MCAL_LAYER/Interrupt/Interrupt_Manager.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.d ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Interrupt/Interrupt_Manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/Device_Config.p1: MCAL_LAYER/Device_Config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1 MCAL_LAYER/Device_Config.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/Device_Config.d ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/Device_Config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1: MCAL_LAYER/GPIO_hal.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_LAYER" 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1 MCAL_LAYER/GPIO_hal.c 
	@-${MV} ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.d ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_LAYER/GPIO_hal.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/Lighting_Mode.p1: Lighting_Mode.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Lighting_Mode.p1.d 
	@${RM} ${OBJECTDIR}/Lighting_Mode.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/Lighting_Mode.p1 Lighting_Mode.c 
	@-${MV} ${OBJECTDIR}/Lighting_Mode.d ${OBJECTDIR}/Lighting_Mode.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/Lighting_Mode.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/LIGHTING_MODE_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/LIGHTING_MODE_.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/LIGHTING_MODE_.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/LIGHTING_MODE_.X.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/LIGHTING_MODE_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/LIGHTING_MODE_.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/LIGHTING_MODE_.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
