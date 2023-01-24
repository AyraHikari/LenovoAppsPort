.class public final Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private averageAppFps:Ljava/lang/Float;

.field private averageFps:Ljava/lang/Integer;

.field private batteryShutdownTemperature:[F

.field private batteryThrottlingTemperature:[F

.field private consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private cpuShutdownTemperature:[F

.field private cpuThrottlingTemperature:[F

.field private edsFps:Ljava/lang/Float;

.field private frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private gpuShutdownTemperature:[F

.field private gpuThrottlingTemperature:[F

.field private memoryConsumptionKilobytes:Ljava/lang/Integer;

.field private postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private shutdownSkinTemperatureCelsius:Ljava/lang/Float;

.field private thermalEventFlags:Ljava/lang/Integer;

.field private throttleSkinTemperatureCelsius:Ljava/lang/Float;

.field private timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

.field private totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

.field private vrMaxSkinTemperatureCelsius:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4665
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 4670
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    .line 4671
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4672
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    .line 4673
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4674
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4675
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    .line 4676
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 4677
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4678
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4679
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4680
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4681
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4682
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4683
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    .line 4684
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 4685
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 4686
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 4687
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 4688
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 4689
    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 4690
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageAppFps:Ljava/lang/Float;

    .line 4691
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->edsFps:Ljava/lang/Float;

    .line 4692
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4693
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    .locals 5

    .line 4700
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4704
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 4705
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 4706
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 4707
    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 4708
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4712
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v1, :cond_2

    .line 4713
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;->clone()Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 4715
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_4

    array-length v3, v1

    if-lez v3, :cond_4

    .line 4716
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 4717
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 4718
    aget-object v4, v3, v1

    if-eqz v4, :cond_3

    .line 4719
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4723
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_6

    array-length v3, v1

    if-lez v3, :cond_6

    .line 4724
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 4725
    :goto_2
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_6

    .line 4726
    aget-object v4, v3, v1

    if-eqz v4, :cond_5

    .line 4727
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4731
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_8

    array-length v3, v1

    if-lez v3, :cond_8

    .line 4732
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 4733
    :goto_3
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_8

    .line 4734
    aget-object v4, v3, v1

    if-eqz v4, :cond_7

    .line 4735
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4739
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_a

    array-length v3, v1

    if-lez v3, :cond_a

    .line 4740
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 4741
    :goto_4
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_a

    .line 4742
    aget-object v4, v3, v1

    if-eqz v4, :cond_9

    .line 4743
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4747
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_c

    array-length v3, v1

    if-lez v3, :cond_c

    .line 4748
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move v1, v2

    .line 4749
    :goto_5
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v4, v3

    if-ge v1, v4, :cond_c

    .line 4750
    aget-object v4, v3, v1

    if-eqz v4, :cond_b

    .line 4751
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4755
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_e

    array-length v3, v1

    if-lez v3, :cond_e

    .line 4756
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    .line 4757
    :goto_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v1

    if-ge v2, v3, :cond_e

    .line 4758
    aget-object v3, v1, v2

    if-eqz v3, :cond_d

    .line 4759
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    move-result-object v1

    aput-object v1, v3, v2

    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 4763
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v1, :cond_f

    array-length v2, v1

    if-lez v2, :cond_f

    .line 4764
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 4766
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v1, :cond_10

    array-length v2, v1

    if-lez v2, :cond_10

    .line 4767
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 4769
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v1, :cond_11

    array-length v2, v1

    if-lez v2, :cond_11

    .line 4770
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 4772
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v1, :cond_12

    array-length v2, v1

    if-lez v2, :cond_12

    .line 4773
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 4775
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v1, :cond_13

    array-length v2, v1

    if-lez v2, :cond_13

    .line 4776
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 4778
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v1, :cond_14

    array-length v2, v1

    if-lez v2, :cond_14

    .line 4779
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    :cond_14
    return-object v0

    :catch_0
    move-exception v0

    .line 4702
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4556
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4556
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4556
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 8

    .line 4906
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4907
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4909
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4911
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v4

    .line 4912
    :goto_0
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 4913
    aget-object v5, v5, v1

    if-eqz v5, :cond_1

    .line 4916
    invoke-static {v3, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v0, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4920
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    const/4 v5, 0x3

    .line 4922
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4924
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    const/4 v5, 0x4

    if-eqz v1, :cond_4

    .line 4926
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4928
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v1, :cond_5

    const/4 v6, 0x5

    .line 4930
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v6, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4932
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v1, :cond_6

    const/4 v6, 0x6

    .line 4934
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v6, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 4936
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v1, :cond_7

    const/4 v6, 0x7

    .line 4938
    invoke-static {v6, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4940
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_9

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v4

    .line 4941
    :goto_1
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_9

    .line 4942
    aget-object v6, v6, v1

    if-eqz v6, :cond_8

    const/16 v7, 0x8

    .line 4945
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4949
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v4

    .line 4950
    :goto_2
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_b

    .line 4951
    aget-object v6, v6, v1

    if-eqz v6, :cond_a

    const/16 v7, 0x9

    .line 4954
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4958
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_d

    array-length v1, v1

    if-lez v1, :cond_d

    move v1, v4

    .line 4959
    :goto_3
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_d

    .line 4960
    aget-object v6, v6, v1

    if-eqz v6, :cond_c

    const/16 v7, 0xa

    .line 4963
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 4967
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_f

    array-length v1, v1

    if-lez v1, :cond_f

    move v1, v4

    .line 4968
    :goto_4
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_f

    .line 4969
    aget-object v6, v6, v1

    if-eqz v6, :cond_e

    const/16 v7, 0xb

    .line 4972
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4976
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_11

    array-length v1, v1

    if-lez v1, :cond_11

    move v1, v4

    .line 4977
    :goto_5
    iget-object v6, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v7, v6

    if-ge v1, v7, :cond_11

    .line 4978
    aget-object v6, v6, v1

    if-eqz v6, :cond_10

    const/16 v7, 0xc

    .line 4981
    invoke-static {v7, v6}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4985
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v1, :cond_13

    array-length v1, v1

    if-lez v1, :cond_13

    .line 4986
    :goto_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v6, v1

    if-ge v4, v6, :cond_13

    .line 4987
    aget-object v1, v1, v4

    if-eqz v1, :cond_12

    const/16 v6, 0xd

    .line 4990
    invoke-static {v6, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 4994
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/16 v4, 0xe

    .line 4996
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4998
    :cond_14
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v1, :cond_15

    array-length v4, v1

    if-lez v4, :cond_15

    .line 4999
    array-length v4, v1

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 5001
    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 5003
    :cond_15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v1, :cond_16

    array-length v2, v1

    if-lez v2, :cond_16

    .line 5004
    array-length v2, v1

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 5006
    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 5008
    :cond_16
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v1, :cond_17

    array-length v2, v1

    if-lez v2, :cond_17

    .line 5009
    array-length v2, v1

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 5011
    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 5013
    :cond_17
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v1, :cond_18

    array-length v2, v1

    if-lez v2, :cond_18

    .line 5014
    array-length v2, v1

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 5016
    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 5018
    :cond_18
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v1, :cond_19

    array-length v2, v1

    if-lez v2, :cond_19

    .line 5019
    array-length v2, v1

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 5021
    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 5023
    :cond_19
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v1, :cond_1a

    array-length v2, v1

    if-lez v2, :cond_1a

    .line 5024
    array-length v2, v1

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 5026
    array-length v1, v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 5028
    :cond_1a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageAppFps:Ljava/lang/Float;

    if-eqz v1, :cond_1b

    const/16 v2, 0x15

    .line 5030
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5032
    :cond_1b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->edsFps:Ljava/lang/Float;

    if-eqz v1, :cond_1c

    const/16 v2, 0x16

    .line 5034
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5044
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 5049
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 5428
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->edsFps:Ljava/lang/Float;

    goto :goto_0

    .line 5424
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageAppFps:Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xa5

    .line 5392
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5393
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    .line 5394
    new-array v3, v0, [F

    if-eqz v2, :cond_2

    .line 5396
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_3

    .line 5399
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 5400
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5403
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 5404
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    goto :goto_0

    .line 5408
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5409
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5410
    div-int/lit8 v0, v0, 0x4

    .line 5411
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    array-length v3, v3

    :goto_3
    add-int/2addr v0, v3

    .line 5412
    new-array v4, v0, [F

    if-eqz v3, :cond_5

    .line 5414
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_4
    if-ge v3, v0, :cond_6

    .line 5417
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 5419
    :cond_6
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    .line 5420
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0x9d

    .line 5359
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5360
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_5

    :cond_7
    array-length v2, v2

    :goto_5
    add-int/2addr v0, v2

    .line 5361
    new-array v3, v0, [F

    if-eqz v2, :cond_8

    .line 5363
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_9

    .line 5366
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 5367
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5370
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 5371
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    goto/16 :goto_0

    .line 5375
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5376
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5377
    div-int/lit8 v0, v0, 0x4

    .line 5378
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_7

    :cond_a
    array-length v3, v3

    :goto_7
    add-int/2addr v0, v3

    .line 5379
    new-array v4, v0, [F

    if-eqz v3, :cond_b

    .line 5381
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_8
    if-ge v3, v0, :cond_c

    .line 5384
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 5386
    :cond_c
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    .line 5387
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0x95

    .line 5326
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5327
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_9

    :cond_d
    array-length v2, v2

    :goto_9
    add-int/2addr v0, v2

    .line 5328
    new-array v3, v0, [F

    if-eqz v2, :cond_e

    .line 5330
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_a
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_f

    .line 5333
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 5334
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 5337
    :cond_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 5338
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    goto/16 :goto_0

    .line 5342
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5343
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5344
    div-int/lit8 v0, v0, 0x4

    .line 5345
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-nez v3, :cond_10

    move v3, v1

    goto :goto_b

    :cond_10
    array-length v3, v3

    :goto_b
    add-int/2addr v0, v3

    .line 5346
    new-array v4, v0, [F

    if-eqz v3, :cond_11

    .line 5348
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_c
    if-ge v3, v0, :cond_12

    .line 5351
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 5353
    :cond_12
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    .line 5354
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_8
    const/16 v0, 0x8d

    .line 5293
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5294
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_d

    :cond_13
    array-length v2, v2

    :goto_d
    add-int/2addr v0, v2

    .line 5295
    new-array v3, v0, [F

    if-eqz v2, :cond_14

    .line 5297
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_e
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_15

    .line 5300
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 5301
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 5304
    :cond_15
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 5305
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    goto/16 :goto_0

    .line 5309
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5310
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5311
    div-int/lit8 v0, v0, 0x4

    .line 5312
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-nez v3, :cond_16

    move v3, v1

    goto :goto_f

    :cond_16
    array-length v3, v3

    :goto_f
    add-int/2addr v0, v3

    .line 5313
    new-array v4, v0, [F

    if-eqz v3, :cond_17

    .line 5315
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_17
    :goto_10
    if-ge v3, v0, :cond_18

    .line 5318
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 5320
    :cond_18
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    .line 5321
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_a
    const/16 v0, 0x85

    .line 5260
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5261
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-nez v2, :cond_19

    move v2, v1

    goto :goto_11

    :cond_19
    array-length v2, v2

    :goto_11
    add-int/2addr v0, v2

    .line 5262
    new-array v3, v0, [F

    if-eqz v2, :cond_1a

    .line 5264
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a
    :goto_12
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_1b

    .line 5267
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 5268
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 5271
    :cond_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 5272
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    goto/16 :goto_0

    .line 5276
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5277
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5278
    div-int/lit8 v0, v0, 0x4

    .line 5279
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-nez v3, :cond_1c

    move v3, v1

    goto :goto_13

    :cond_1c
    array-length v3, v3

    :goto_13
    add-int/2addr v0, v3

    .line 5280
    new-array v4, v0, [F

    if-eqz v3, :cond_1d

    .line 5282
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d
    :goto_14
    if-ge v3, v0, :cond_1e

    .line 5285
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 5287
    :cond_1e
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    .line 5288
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_c
    const/16 v0, 0x7d

    .line 5227
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5228
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-nez v2, :cond_1f

    move v2, v1

    goto :goto_15

    :cond_1f
    array-length v2, v2

    :goto_15
    add-int/2addr v0, v2

    .line 5229
    new-array v3, v0, [F

    if-eqz v2, :cond_20

    .line 5231
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_20
    :goto_16
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_21

    .line 5234
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v3, v2

    .line 5235
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 5238
    :cond_21
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    aput v0, v3, v2

    .line 5239
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    goto/16 :goto_0

    .line 5243
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5244
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v2

    .line 5245
    div-int/lit8 v0, v0, 0x4

    .line 5246
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-nez v3, :cond_22

    move v3, v1

    goto :goto_17

    :cond_22
    array-length v3, v3

    :goto_17
    add-int/2addr v0, v3

    .line 5247
    new-array v4, v0, [F

    if-eqz v3, :cond_23

    .line 5249
    iget-object v5, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_23
    :goto_18
    if-ge v3, v0, :cond_24

    .line 5252
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 5254
    :cond_24
    iput-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    .line 5255
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    .line 5222
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_f
    const/16 v0, 0x6a

    .line 5203
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5204
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_25

    move v2, v1

    goto :goto_19

    :cond_25
    array-length v2, v2

    :goto_19
    add-int/2addr v0, v2

    .line 5205
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_26

    .line 5208
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_26
    :goto_1a
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_27

    .line 5211
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v3, v2

    .line 5212
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5213
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 5216
    :cond_27
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v2

    .line 5217
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5218
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x62

    .line 5183
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5184
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_28

    move v2, v1

    goto :goto_1b

    :cond_28
    array-length v2, v2

    :goto_1b
    add-int/2addr v0, v2

    .line 5185
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_29

    .line 5188
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29
    :goto_1c
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_2a

    .line 5191
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v3, v2

    .line 5192
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5193
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 5196
    :cond_2a
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v2

    .line 5197
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5198
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    :sswitch_11
    const/16 v0, 0x5a

    .line 5163
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5164
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_2b

    move v2, v1

    goto :goto_1d

    :cond_2b
    array-length v2, v2

    :goto_1d
    add-int/2addr v0, v2

    .line 5165
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_2c

    .line 5168
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2c
    :goto_1e
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_2d

    .line 5171
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v3, v2

    .line 5172
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5173
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 5176
    :cond_2d
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v2

    .line 5177
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5178
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    :sswitch_12
    const/16 v0, 0x52

    .line 5143
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5144
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_2e

    move v2, v1

    goto :goto_1f

    :cond_2e
    array-length v2, v2

    :goto_1f
    add-int/2addr v0, v2

    .line 5145
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_2f

    .line 5148
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2f
    :goto_20
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_30

    .line 5151
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v3, v2

    .line 5152
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5153
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 5156
    :cond_30
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v2

    .line 5157
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5158
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    :sswitch_13
    const/16 v0, 0x4a

    .line 5123
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5124
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_31

    move v2, v1

    goto :goto_21

    :cond_31
    array-length v2, v2

    :goto_21
    add-int/2addr v0, v2

    .line 5125
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_32

    .line 5128
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_32
    :goto_22
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_33

    .line 5131
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v3, v2

    .line 5132
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5133
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 5136
    :cond_33
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v2

    .line 5137
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5138
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    :sswitch_14
    const/16 v0, 0x42

    .line 5103
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5104
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_34

    move v2, v1

    goto :goto_23

    :cond_34
    array-length v2, v2

    :goto_23
    add-int/2addr v0, v2

    .line 5105
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_35

    .line 5108
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_35
    :goto_24
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_36

    .line 5111
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v3, v2

    .line 5112
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5113
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 5116
    :cond_36
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v2

    .line 5117
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5118
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5095
    :sswitch_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-nez v0, :cond_37

    .line 5096
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    .line 5098
    :cond_37
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5091
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    goto/16 :goto_0

    .line 5087
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    goto/16 :goto_0

    .line 5083
    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    goto/16 :goto_0

    .line 5079
    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0x12

    .line 5060
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5061
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-nez v2, :cond_38

    move v2, v1

    goto :goto_25

    :cond_38
    array-length v2, v2

    :goto_25
    add-int/2addr v0, v2

    .line 5062
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v2, :cond_39

    .line 5065
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_39
    :goto_26
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_3a

    .line 5068
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v1, v3, v2

    .line 5069
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5070
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 5073
    :cond_3a
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;-><init>()V

    aput-object v0, v3, v2

    .line 5074
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 5075
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    goto/16 :goto_0

    .line 5055
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_1c
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1c
        0x8 -> :sswitch_1b
        0x12 -> :sswitch_1a
        0x18 -> :sswitch_19
        0x25 -> :sswitch_18
        0x2d -> :sswitch_17
        0x35 -> :sswitch_16
        0x3a -> :sswitch_15
        0x42 -> :sswitch_14
        0x4a -> :sswitch_13
        0x52 -> :sswitch_12
        0x5a -> :sswitch_11
        0x62 -> :sswitch_10
        0x6a -> :sswitch_f
        0x70 -> :sswitch_e
        0x7a -> :sswitch_d
        0x7d -> :sswitch_c
        0x82 -> :sswitch_b
        0x85 -> :sswitch_a
        0x8a -> :sswitch_9
        0x8d -> :sswitch_8
        0x92 -> :sswitch_7
        0x95 -> :sswitch_6
        0x9a -> :sswitch_5
        0x9d -> :sswitch_4
        0xa2 -> :sswitch_3
        0xa5 -> :sswitch_2
        0xad -> :sswitch_1
        0xb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4788
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageFps:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 4789
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4791
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 4792
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->frameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 4793
    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 4795
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4799
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->memoryConsumptionKilobytes:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 4800
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4802
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->throttleSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    .line 4803
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4805
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->vrMaxSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    .line 4806
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4808
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->shutdownSkinTemperatureCelsius:Ljava/lang/Float;

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    .line 4809
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4811
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->timeSeriesData:Lcom/google/common/logging/nano/Vr$VREvent$TimeSeriesData;

    if-eqz v0, :cond_7

    const/4 v2, 0x7

    .line 4812
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 4814
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    move v0, v1

    .line 4815
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->appRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_9

    .line 4816
    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    const/16 v3, 0x8

    .line 4818
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4822
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 4823
    :goto_2
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->presentTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 4824
    aget-object v2, v2, v0

    if-eqz v2, :cond_a

    const/16 v3, 0x9

    .line 4826
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4830
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_d

    array-length v0, v0

    if-lez v0, :cond_d

    move v0, v1

    .line 4831
    :goto_3
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->totalRenderTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_d

    .line 4832
    aget-object v2, v2, v0

    if-eqz v2, :cond_c

    const/16 v3, 0xa

    .line 4834
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 4838
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_f

    array-length v0, v0

    if-lez v0, :cond_f

    move v0, v1

    .line 4839
    :goto_4
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->postFrameTime:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_f

    .line 4840
    aget-object v2, v2, v0

    if-eqz v2, :cond_e

    const/16 v3, 0xb

    .line 4842
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 4846
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    move v0, v1

    .line 4847
    :goto_5
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->consecutiveDroppedFrames:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_11

    .line 4848
    aget-object v2, v2, v0

    if-eqz v2, :cond_10

    const/16 v3, 0xc

    .line 4850
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 4854
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    if-eqz v0, :cond_13

    array-length v0, v0

    if-lez v0, :cond_13

    move v0, v1

    .line 4855
    :goto_6
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->scanlineRacingVsyncOvershootUs:[Lcom/google/common/logging/nano/Vr$VREvent$HistogramBucket;

    array-length v3, v2

    if-ge v0, v3, :cond_13

    .line 4856
    aget-object v2, v2, v0

    if-eqz v2, :cond_12

    const/16 v3, 0xd

    .line 4858
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 4862
    :cond_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->thermalEventFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_14

    const/16 v2, 0xe

    .line 4863
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4865
    :cond_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    if-eqz v0, :cond_15

    array-length v0, v0

    if-lez v0, :cond_15

    move v0, v1

    .line 4866
    :goto_7
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuThrottlingTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_15

    const/16 v3, 0xf

    .line 4867
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 4870
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    if-eqz v0, :cond_16

    array-length v0, v0

    if-lez v0, :cond_16

    move v0, v1

    .line 4871
    :goto_8
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuThrottlingTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_16

    const/16 v3, 0x10

    .line 4872
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 4875
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    if-eqz v0, :cond_17

    array-length v0, v0

    if-lez v0, :cond_17

    move v0, v1

    .line 4876
    :goto_9
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryThrottlingTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_17

    const/16 v3, 0x11

    .line 4877
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 4880
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    if-eqz v0, :cond_18

    array-length v0, v0

    if-lez v0, :cond_18

    move v0, v1

    .line 4881
    :goto_a
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->cpuShutdownTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_18

    const/16 v3, 0x12

    .line 4882
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4885
    :cond_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v1

    .line 4886
    :goto_b
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->gpuShutdownTemperature:[F

    array-length v3, v2

    if-ge v0, v3, :cond_19

    const/16 v3, 0x13

    .line 4887
    aget v2, v2, v0

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4890
    :cond_19
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    if-eqz v0, :cond_1a

    array-length v0, v0

    if-lez v0, :cond_1a

    .line 4891
    :goto_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->batteryShutdownTemperature:[F

    array-length v2, v0

    if-ge v1, v2, :cond_1a

    const/16 v2, 0x14

    .line 4892
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4895
    :cond_1a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->averageAppFps:Ljava/lang/Float;

    if-eqz v0, :cond_1b

    const/16 v1, 0x15

    .line 4896
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4898
    :cond_1b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->edsFps:Ljava/lang/Float;

    if-eqz v0, :cond_1c

    const/16 v1, 0x16

    .line 4899
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 4901
    :cond_1c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
