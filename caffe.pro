#-------------------------------------------------
#
# Project created by QtCreator 2016-01-25T09:41:41
#
#-------------------------------------------------

TARGET = caffe
#TEMPLATE = app
#CONFIG += console
#CONFIG -= app_bundle
QT       -= gui
QT       += core
TEMPLATE = lib
CONFIG +=c++11
DEFINES += CAFFE_SHARED_LIBRARY
include(3rdparty/hdf5.pri)
include(3rdparty/protobuf.pri)
include(3rdparty/opencv.pri)
include(3rdparty/boost.pri)
INCLUDEPATH += $$PWD/include \
               $$PWD/src \


SOURCES += \
    src/caffe/blob.cpp \
    src/caffe/common.cpp \
    src/caffe/data_transformer.cpp \
    src/caffe/internal_thread.cpp \
    src/caffe/layer_factory.cpp \
    src/caffe/net.cpp \
    src/caffe/solver.cpp \
    src/caffe/syncedmem.cpp \
    src/caffe/util/benchmark.cpp \
    src/caffe/util/db.cpp \
    src/caffe/util/im2col.cpp \
    src/caffe/util/insert_splits.cpp \
    src/caffe/util/io.cpp \
    src/caffe/util/math_functions.cpp \
    src/caffe/util/upgrade_proto.cpp \
    src/caffe/proto/caffe.pb.cc \
    src/caffe/layers/absval_layer.cpp \
    src/caffe/layers/accuracy_layer.cpp \
    src/caffe/layers/argmax_layer.cpp \
    src/caffe/layers/base_conv_layer.cpp \
    src/caffe/layers/base_data_layer.cpp \
    src/caffe/layers/bnll_layer.cpp \
    src/caffe/layers/concat_layer.cpp \
    src/caffe/layers/contrastive_loss_layer.cpp \
    src/caffe/layers/conv_layer.cpp \
    src/caffe/layers/data_layer.cpp \
    src/caffe/layers/deconv_layer.cpp \
    src/caffe/layers/dropout_layer.cpp \
    src/caffe/layers/dummy_data_layer.cpp \
    src/caffe/layers/eltwise_layer.cpp \
    src/caffe/layers/euclidean_loss_layer.cpp \
    src/caffe/layers/exp_layer.cpp \
    src/caffe/layers/flatten_layer.cpp \
    src/caffe/layers/hdf5_data_layer.cpp \
    src/caffe/layers/hdf5_output_layer.cpp \
    src/caffe/layers/hinge_loss_layer.cpp \
    src/caffe/layers/im2col_layer.cpp \
    src/caffe/layers/image_data_layer.cpp \
    src/caffe/layers/infogain_loss_layer.cpp \
    src/caffe/layers/inner_product_layer.cpp \
    src/caffe/layers/loss_layer.cpp \
    src/caffe/layers/lrn_layer.cpp \
    src/caffe/layers/memory_data_layer.cpp \
    src/caffe/layers/multinomial_logistic_loss_layer.cpp \
    src/caffe/layers/mvn_layer.cpp \
    src/caffe/layers/neuron_layer.cpp \
    src/caffe/layers/pooling_layer.cpp \
    src/caffe/layers/power_layer.cpp \
    src/caffe/layers/relu_layer.cpp \
    src/caffe/layers/sigmoid_cross_entropy_loss_layer.cpp \
    src/caffe/layers/sigmoid_layer.cpp \
    src/caffe/layers/silence_layer.cpp \
    src/caffe/layers/slice_layer.cpp \
    src/caffe/layers/softmax_layer.cpp \
    src/caffe/layers/softmax_loss_layer.cpp \
    src/caffe/layers/split_layer.cpp \
    src/caffe/layers/tanh_layer.cpp \
    src/caffe/layers/threshold_layer.cpp \
    src/caffe/layers/window_data_layer.cpp \
    src/caffe/solvers/adadelta_solver.cpp \
    src/caffe/solvers/adagrad_solver.cpp \
    src/caffe/solvers/adam_solver.cpp \
    src/caffe/solvers/nesterov_solver.cpp \
    src/caffe/solvers/rmsprop_solver.cpp \
    src/caffe/solvers/sgd_solver.cpp \
    src/caffe/data_reader.cpp \
    src/caffe/layer.cpp \
    src/caffe/parallel.cpp \
    src/caffe/util/blocking_queue.cpp \
    src/caffe/util/hdf5.cpp \
    src/caffe/util/signal_handler.cpp \
    src/caffe/layers/batch_norm_layer.cpp \
    src/caffe/layers/batch_reindex_layer.cpp \
    src/caffe/layers/bn_layer.cpp \
    src/caffe/layers/eltwise_affine_layer.cpp \
    src/caffe/layers/embed_layer.cpp \
    src/caffe/layers/filter_layer.cpp \
    src/caffe/layers/gram_layer.cpp \
    src/caffe/layers/insanity_layer.cpp \
    src/caffe/layers/local_layer.cpp \
    src/caffe/layers/log_layer.cpp \
    src/caffe/layers/multi_label_image_data_layer.cpp \
    src/caffe/layers/noise_layer.cpp \
    src/caffe/layers/normalize_layer.cpp \
    src/caffe/layers/prelu_layer.cpp \
    src/caffe/layers/reduction_layer.cpp \
    src/caffe/layers/reshape_layer.cpp \
    src/caffe/layers/roi_pooling_layer.cpp \
    src/caffe/layers/smooth_L1_loss_layer.cpp \
    src/caffe/layers/spp_layer.cpp \
    src/caffe/layers/subregion_layer.cpp \
    src/caffe/layers/tile_layer.cpp \
    src/caffe/layers/transformer_layer.cpp \
    src/caffe/layers/triplet_loss_layer.cpp \
    src/log.cpp

HEADERS  += \
    include/caffe/blob.hpp \
    include/caffe/caffe.hpp \
    include/caffe/common.hpp \
    include/caffe/common_layers.hpp \
    include/caffe/custom_layers.hpp \
    include/caffe/data_layers.hpp \
    include/caffe/data_reader.hpp \
    include/caffe/data_transformer.hpp \
    include/caffe/filler.hpp \
    include/caffe/internal_thread.hpp \
    include/caffe/layer.hpp \
    include/caffe/layer_factory.hpp \
    include/caffe/loss_layers.hpp \
    include/caffe/net.hpp \
    include/caffe/neuron_layers.hpp \
    include/caffe/parallel.hpp \
    include/caffe/python_layer.hpp \
    include/caffe/sgd_solvers.hpp \
    include/caffe/solver.hpp \
    include/caffe/solver_factory.hpp \
    include/caffe/syncedmem.hpp \
    include/caffe/vision_layers.hpp \
    include/log.h

win32 {
    SOURCES +=     src/caffe/util/mkstemp.cpp
}
DEFINES +=CPU_ONLY


