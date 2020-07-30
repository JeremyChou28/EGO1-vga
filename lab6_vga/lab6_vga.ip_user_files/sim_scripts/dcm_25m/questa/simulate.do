onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dcm_25m_opt

do {wave.do}

view wave
view structure
view signals

do {dcm_25m.udo}

run -all

quit -force
