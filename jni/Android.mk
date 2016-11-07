# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := boost_thread
LOCAL_SRC_FILES := $(LOCAL_PATH)/../../3rdparty/lib/armeabi-v7a/libboost_thread.a  
include $(PREBUILT_STATIC_LIBRARY)
include $(CLEAR_VARS)
LOCAL_MODULE := boost_system
LOCAL_SRC_FILES := $(LOCAL_PATH)/../../3rdparty/lib/armeabi-v7a/libboost_system.a    
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := boost_random
LOCAL_SRC_FILES :=$(LOCAL_PATH)/../../3rdparty/lib/armeabi-v7a/libboost_random.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := boost_date_time
LOCAL_SRC_FILES := $(LOCAL_PATH)/../../3rdparty/lib/armeabi-v7a/libboost_date_time.a 
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := openblas
LOCAL_SRC_FILES :=$(LOCAL_PATH)/../../3rdparty/lib/armeabi-v7a/libopenblas_armv7p-r0.2.15.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := gflags
LOCAL_SRC_FILES :=$(LOCAL_PATH)/../../3rdparty/lib/armeabi-v7a/libgflags.a
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := hdf5
LOCAL_SRC_FILES :=libs/armeabi-v7a/libhdf5.a
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE := protoc
LOCAL_SRC_FILES :=$(LOCAL_PATH)/../../3rdparty/lib/armeabi-v7a/libprotoc.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := protobuf
LOCAL_SRC_FILES :=$(LOCAL_PATH)/../../3rdparty/lib/armeabi-v7a/libprotobuf.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := protobuf-lite
LOCAL_SRC_FILES :=$(LOCAL_PATH)/../../3rdparty/lib/armeabi-v7a/libprotobuf-lite.a
include $(PREBUILT_STATIC_LIBRARY)


include $(CLEAR_VARS)

LOCAL_STATIC_LIBRARIES += gflags openblas boost_system boost_random boost_date_time boost_thread hdf5 hdf5_hl hdf5_cpp hdf5_hl_cpp protoc protobuf protobuf-lite

#static opencv library <--> LOCAL_LDLIBS " += "
OPENCV_CAMERA_MODULES:=off
OPENCV_INSTALL_MODULES:=on
OPENCV_LIB_TYPE:=STATIC
include D:/WorkPlaceLibrary/OpenCV_sdk/native/jni/OpenCV.mk
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../include $(LOCAL_PATH)/../src $(LOCAL_PATH)/../3rdparty $(LOCAL_PATH)/../3rdparty/hdf5 

LOCAL_MODULE    := libcaffe
LOCAL_CFLAGS += -DCPU_ONLY -DBUILD_JNI

LOCAL_CFLAGS += -march=armv7-a -mhard-float -mfloat-abi=hard -mfpu=vfpv3
LOCAL_LDFLAGS += -Wl,--no-warn-mismatch

ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_CFLAGS += -DBUILD_ARMV7
    LOCAL_STATIC_LIBRARIES += android-ndk-profiler
endif
LOCAL_SRC_FILES :=  $(LOCAL_PATH)/../../src/caffe/blob.cpp \
    $(LOCAL_PATH)/../../src/caffe/common.cpp \
    $(LOCAL_PATH)/../../src/caffe/data_transformer.cpp \
    $(LOCAL_PATH)/../../src/caffe/internal_thread.cpp \
    $(LOCAL_PATH)/../../src/caffe/layer_factory.cpp \
    $(LOCAL_PATH)/../../src/caffe/net.cpp \
    $(LOCAL_PATH)/../../src/caffe/solver.cpp \
    $(LOCAL_PATH)/../../src/caffe/syncedmem.cpp \
    $(LOCAL_PATH)/../../src/caffe/util/benchmark.cpp \
    $(LOCAL_PATH)/../../src/caffe/util/db.cpp \
    $(LOCAL_PATH)/../../src/caffe/util/im2col.cpp \
    $(LOCAL_PATH)/../../src/caffe/util/insert_splits.cpp \
    $(LOCAL_PATH)/../../src/caffe/util/io.cpp \
    $(LOCAL_PATH)/../../src/caffe/util/math_functions.cpp \
    $(LOCAL_PATH)/../../src/caffe/util/upgrade_proto.cpp \
    $(LOCAL_PATH)/../../src/caffe/proto/caffe.pb.cc \
    $(LOCAL_PATH)/../../src/caffe/layers/absval_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/accuracy_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/argmax_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/base_conv_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/base_data_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/bnll_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/concat_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/contrastive_loss_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/conv_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/data_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/deconv_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/dropout_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/dummy_data_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/eltwise_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/euclidean_loss_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/exp_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/flatten_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/hdf5_data_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/hdf5_output_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/hinge_loss_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/im2col_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/image_data_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/infogain_loss_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/inner_product_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/loss_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/lrn_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/memory_data_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/multinomial_logistic_loss_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/mvn_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/neuron_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/pooling_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/power_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/relu_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/sigmoid_cross_entropy_loss_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/sigmoid_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/silence_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/slice_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/softmax_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/softmax_loss_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/split_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/tanh_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/threshold_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/window_data_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/solvers/adadelta_solver.cpp \
    $(LOCAL_PATH)/../../src/caffe/solvers/adagrad_solver.cpp \
    $(LOCAL_PATH)/../../src/caffe/solvers/adam_solver.cpp \
    $(LOCAL_PATH)/../../src/caffe/solvers/nesterov_solver.cpp \
    $(LOCAL_PATH)/../../src/caffe/solvers/rmsprop_solver.cpp \
    $(LOCAL_PATH)/../../src/caffe/solvers/sgd_solver.cpp \
    $(LOCAL_PATH)/../../src/caffe/data_reader.cpp \
    $(LOCAL_PATH)/../../src/caffe/layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/parallel.cpp \
    $(LOCAL_PATH)/../../src/caffe/util/blocking_queue.cpp \
    $(LOCAL_PATH)/../../src/caffe/util/hdf5.cpp \
    $(LOCAL_PATH)/../../src/caffe/util/signal_handler.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/batch_norm_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/batch_reindex_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/bn_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/eltwise_affine_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/embed_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/filter_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/gram_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/insanity_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/local_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/log_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/multi_label_image_data_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/noise_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/normalize_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/prelu_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/reduction_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/reshape_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/roi_pooling_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/smooth_L1_loss_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/spp_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/subregion_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/tile_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/transformer_layer.cpp \
    $(LOCAL_PATH)/../../src/caffe/layers/triplet_loss_layer.cpp \
    $(LOCAL_PATH)/../../src/log.cpp
LOCAL_LDLIBS    += -llog
include $(BUILD_SHARED_LIBRARY)
