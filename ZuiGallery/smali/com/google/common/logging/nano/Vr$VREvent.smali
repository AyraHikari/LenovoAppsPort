.class public final Lcom/google/common/logging/nano/Vr$VREvent;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field private audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

.field private cohort:Ljava/lang/String;

.field private cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

.field private durationMs:Ljava/lang/Long;

.field private earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

.field private embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

.field private eventSource:Ljava/lang/Integer;

.field private expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

.field private gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

.field private headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

.field private headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

.field private installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

.field private jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

.field private keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

.field private launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

.field private lifetimeCountBucket:Ljava/lang/Integer;

.field private lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

.field private performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

.field public phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

.field private photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

.field private qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

.field private renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

.field private sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

.field private sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

.field private standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

.field private streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

.field private vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

.field private vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

.field private vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17729
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 17734
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eventSource:Ljava/lang/Integer;

    .line 17735
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 17736
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 17737
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    .line 17738
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 17739
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 17740
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 17741
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    .line 17742
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    .line 17743
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 17744
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 17745
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 17746
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 17747
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 17748
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 17749
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 17750
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 17751
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 17752
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 17753
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 17754
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 17755
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 17756
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 17757
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 17758
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 17759
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    .line 17760
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    .line 17761
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    .line 17762
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    .line 17763
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    .line 17764
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 17765
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cachedSize:I

    return-void
.end method

.method private clone()Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 4

    .line 17772
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17776
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-eqz v1, :cond_0

    .line 17777
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 17779
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_1

    .line 17780
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 17782
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    .line 17783
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$Application;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    const/4 v1, 0x0

    .line 17784
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 17785
    aget-object v3, v2, v1

    if-eqz v3, :cond_2

    .line 17786
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Application;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Application;

    move-result-object v2

    aput-object v2, v3, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17790
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v1, :cond_4

    .line 17791
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 17793
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v1, :cond_5

    .line 17794
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;->clone()Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 17796
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v1, :cond_6

    .line 17797
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 17799
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v1, :cond_7

    .line 17800
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 17802
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v1, :cond_8

    .line 17803
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;->clone()Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 17805
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v1, :cond_9

    .line 17806
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 17808
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v1, :cond_a

    .line 17809
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 17811
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v1, :cond_b

    .line 17812
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 17814
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v1, :cond_c

    .line 17815
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 17817
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v1, :cond_d

    .line 17818
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 17820
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v1, :cond_e

    .line 17821
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 17823
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v1, :cond_f

    .line 17824
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 17826
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v1, :cond_10

    .line 17827
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 17829
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v1, :cond_11

    .line 17830
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 17832
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v1, :cond_12

    .line 17833
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 17835
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v1, :cond_13

    .line 17836
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;->clone()Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 17838
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v1, :cond_14

    .line 17839
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;->clone()Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 17841
    :cond_14
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v1, :cond_15

    .line 17842
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;->clone()Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 17844
    :cond_15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    if-eqz v1, :cond_16

    .line 17845
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    .line 17847
    :cond_16
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    if-eqz v1, :cond_17

    .line 17848
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;->clone()Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    .line 17850
    :cond_17
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    if-eqz v1, :cond_18

    .line 17851
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    .line 17853
    :cond_18
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    if-eqz v1, :cond_19

    .line 17854
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;->clone()Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    .line 17856
    :cond_19
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    if-eqz v1, :cond_1a

    .line 17857
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;->clone()Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    :cond_1a
    return-object v0

    :catch_0
    move-exception v0

    .line 17774
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
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

    .line 18100
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 18105
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 18324
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 18326
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 38
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x2b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum EventSource"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 18326
    :cond_2
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eventSource:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18328
    :catch_0
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 18329
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 18317
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    if-nez v0, :cond_3

    .line 18318
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    .line 18320
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 18310
    :sswitch_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    if-nez v0, :cond_4

    .line 18311
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    .line 18313
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 18303
    :sswitch_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    if-nez v0, :cond_5

    .line 18304
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    .line 18306
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 18296
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    if-nez v0, :cond_6

    .line 18297
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    .line 18299
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18289
    :sswitch_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    if-nez v0, :cond_7

    .line 18290
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    .line 18292
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18282
    :sswitch_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-nez v0, :cond_8

    .line 18283
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    .line 18285
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18275
    :sswitch_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-nez v0, :cond_9

    .line 18276
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    .line 18278
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18268
    :sswitch_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-nez v0, :cond_a

    .line 18269
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    .line 18271
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18261
    :sswitch_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-nez v0, :cond_b

    .line 18262
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrHome;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    .line 18264
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18254
    :sswitch_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-nez v0, :cond_c

    .line 18255
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Photos;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    .line 18257
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18247
    :sswitch_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-nez v0, :cond_d

    .line 18248
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$StreetView;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    .line 18250
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18240
    :sswitch_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-nez v0, :cond_e

    .line 18241
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    .line 18243
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18233
    :sswitch_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-nez v0, :cond_f

    .line 18234
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Renderer;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    .line 18236
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18226
    :sswitch_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-nez v0, :cond_10

    .line 18227
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    .line 18229
    :cond_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18219
    :sswitch_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-nez v0, :cond_11

    .line 18220
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Launcher;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    .line 18222
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18212
    :sswitch_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-nez v0, :cond_12

    .line 18213
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    .line 18215
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18205
    :sswitch_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-nez v0, :cond_13

    .line 18206
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$VrCore;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    .line 18208
    :cond_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18198
    :sswitch_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-nez v0, :cond_14

    .line 18199
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    .line 18201
    :cond_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18191
    :sswitch_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-nez v0, :cond_15

    .line 18192
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    .line 18194
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18184
    :sswitch_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-nez v0, :cond_16

    .line 18185
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    .line 18187
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18177
    :sswitch_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-nez v0, :cond_17

    .line 18178
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    .line 18180
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18167
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 18169
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_18

    const/16 v3, 0x15

    if-eq v2, v3, :cond_18

    packed-switch v2, :pswitch_data_0

    .line 80
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const/16 v4, 0x26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not a valid enum Bucket"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 18169
    :cond_18
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 18171
    :catch_1
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 18172
    invoke-virtual {p0, p1, v0}, Lcom/google/common/logging/nano/Vr$VREvent;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto/16 :goto_0

    .line 18163
    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    goto/16 :goto_0

    .line 18156
    :sswitch_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-nez v0, :cond_19

    .line 18157
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    .line 18159
    :cond_19
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18149
    :sswitch_19
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-nez v0, :cond_1a

    .line 18150
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    .line 18152
    :cond_1a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_1a
    const/16 v0, 0x22

    .line 18130
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 18131
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    move v1, v2

    goto :goto_2

    :cond_1b
    array-length v1, v1

    :goto_2
    add-int/2addr v0, v1

    .line 18132
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_1c

    .line 18135
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1c
    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_1d

    .line 18138
    new-instance v2, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v2}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    aput-object v2, v3, v1

    .line 18139
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 18140
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 18143
    :cond_1d
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    aput-object v0, v3, v1

    .line 18144
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 18145
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    goto/16 :goto_0

    .line 18125
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    goto/16 :goto_0

    .line 18118
    :sswitch_1c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-nez v0, :cond_1e

    .line 18119
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Application;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    .line 18121
    :cond_1e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 18111
    :sswitch_1d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-nez v0, :cond_1f

    .line 18112
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    .line 18114
    :cond_1f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_1e
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1e
        0xa -> :sswitch_1d
        0x12 -> :sswitch_1c
        0x18 -> :sswitch_1b
        0x22 -> :sswitch_1a
        0x2a -> :sswitch_19
        0x32 -> :sswitch_18
        0x3a -> :sswitch_17
        0x40 -> :sswitch_16
        0x4a -> :sswitch_15
        0x52 -> :sswitch_14
        0x5a -> :sswitch_13
        0x62 -> :sswitch_12
        0x6a -> :sswitch_11
        0x72 -> :sswitch_10
        0x7a -> :sswitch_f
        0x82 -> :sswitch_e
        0x8a -> :sswitch_d
        0x92 -> :sswitch_c
        0x9a -> :sswitch_b
        0xa2 -> :sswitch_a
        0xaa -> :sswitch_9
        0xb2 -> :sswitch_8
        0xba -> :sswitch_7
        0xc2 -> :sswitch_6
        0xca -> :sswitch_5
        0xd2 -> :sswitch_4
        0xda -> :sswitch_3
        0xe2 -> :sswitch_2
        0xea -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

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

    .line 11
    invoke-direct {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

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

    .line 11
    invoke-direct {p0}, Lcom/google/common/logging/nano/Vr$VREvent;->clone()Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 17966
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 17967
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 17969
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17971
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 17973
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17975
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    .line 17977
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 17979
    :cond_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v1, :cond_4

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    .line 17980
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 17981
    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    const/4 v3, 0x4

    .line 17984
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17988
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 17990
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17992
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 17994
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 17996
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 17998
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18000
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 18002
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 18004
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 18006
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18008
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 18010
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18012
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 18014
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18016
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 18018
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18020
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 18022
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18024
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 18026
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18028
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 18030
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18032
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 18034
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18036
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 18038
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18040
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    .line 18042
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18044
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v1, :cond_13

    const/16 v2, 0x13

    .line 18046
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18048
    :cond_13
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v1, :cond_14

    const/16 v2, 0x14

    .line 18050
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18052
    :cond_14
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v1, :cond_15

    const/16 v2, 0x15

    .line 18054
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18056
    :cond_15
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v1, :cond_16

    const/16 v2, 0x16

    .line 18058
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18060
    :cond_16
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v1, :cond_17

    const/16 v2, 0x17

    .line 18062
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18064
    :cond_17
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v1, :cond_18

    const/16 v2, 0x18

    .line 18066
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18068
    :cond_18
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    if-eqz v1, :cond_19

    const/16 v2, 0x19

    .line 18070
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18072
    :cond_19
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    if-eqz v1, :cond_1a

    const/16 v2, 0x1a

    .line 18074
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18076
    :cond_1a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    if-eqz v1, :cond_1b

    const/16 v2, 0x1b

    .line 18078
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18080
    :cond_1b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    if-eqz v1, :cond_1c

    const/16 v2, 0x1c

    .line 18082
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18084
    :cond_1c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    if-eqz v1, :cond_1d

    const/16 v2, 0x1d

    .line 18086
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 18088
    :cond_1d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eventSource:Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    const/16 v2, 0x1e

    .line 18090
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1e
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 0
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

    .line 11
    invoke-direct {p0, p1}, Lcom/google/common/logging/nano/Vr$VREvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/Vr$VREvent;

    move-result-object p1

    return-object p1
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

    .line 17866
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headMount:Lcom/google/common/logging/nano/Vr$VREvent$HeadMount;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 17867
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17869
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->application:Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 17870
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17872
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->durationMs:Ljava/lang/Long;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 17873
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 17875
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    if-eqz v0, :cond_4

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 17876
    :goto_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent;->installedVrApplications:[Lcom/google/common/logging/nano/Vr$VREvent$Application;

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 17877
    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    .line 17879
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17883
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cyclops:Lcom/google/common/logging/nano/Vr$VREvent$Cyclops;

    if-eqz v0, :cond_5

    const/4 v1, 0x5

    .line 17884
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17886
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->qrCodeScan:Lcom/google/common/logging/nano/Vr$VREvent$QrCodeScan;

    if-eqz v0, :cond_6

    const/4 v1, 0x6

    .line 17887
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17889
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->cohort:Ljava/lang/String;

    if-eqz v0, :cond_7

    const/4 v1, 0x7

    .line 17890
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 17892
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lifetimeCountBucket:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    .line 17893
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 17895
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->performanceStats:Lcom/google/common/logging/nano/Vr$VREvent$PerformanceStats;

    if-eqz v0, :cond_9

    const/16 v1, 0x9

    .line 17896
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17898
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sensorStats:Lcom/google/common/logging/nano/Vr$VREvent$SensorStats;

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    .line 17899
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17901
    :cond_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->audioStats:Lcom/google/common/logging/nano/Vr$VREvent$AudioStats;

    if-eqz v0, :cond_b

    const/16 v1, 0xb

    .line 17902
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17904
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->embedVrWidget:Lcom/google/common/logging/nano/Vr$VREvent$EmbedVrWidget;

    if-eqz v0, :cond_c

    const/16 v1, 0xc

    .line 17905
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17907
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrCore:Lcom/google/common/logging/nano/Vr$VREvent$VrCore;

    if-eqz v0, :cond_d

    const/16 v1, 0xd

    .line 17908
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17910
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->earthVr:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    if-eqz v0, :cond_e

    const/16 v1, 0xe

    .line 17911
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17913
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->launcher:Lcom/google/common/logging/nano/Vr$VREvent$Launcher;

    if-eqz v0, :cond_f

    const/16 v1, 0xf

    .line 17914
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17916
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->keyboard:Lcom/google/common/logging/nano/Vr$VREvent$Keyboard;

    if-eqz v0, :cond_10

    const/16 v1, 0x10

    .line 17917
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17919
    :cond_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->renderer:Lcom/google/common/logging/nano/Vr$VREvent$Renderer;

    if-eqz v0, :cond_11

    const/16 v1, 0x11

    .line 17920
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17922
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->lullaby:Lcom/google/common/logging/nano/Vr$VREvent$Lullaby;

    if-eqz v0, :cond_12

    const/16 v1, 0x12

    .line 17923
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17925
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$StreetView;

    if-eqz v0, :cond_13

    const/16 v1, 0x13

    .line 17926
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17928
    :cond_13
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->photos:Lcom/google/common/logging/nano/Vr$VREvent$Photos;

    if-eqz v0, :cond_14

    const/16 v1, 0x14

    .line 17929
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17931
    :cond_14
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrHome:Lcom/google/common/logging/nano/Vr$VREvent$VrHome;

    if-eqz v0, :cond_15

    const/16 v1, 0x15

    .line 17932
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17934
    :cond_15
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->sdkConfiguration:Lcom/google/common/logging/nano/Vr$VREvent$SdkConfigurationParams;

    if-eqz v0, :cond_16

    const/16 v1, 0x16

    .line 17935
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17937
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->gConfigUpdate:Lcom/google/common/logging/nano/Vr$VREvent$GConfigUpdate;

    if-eqz v0, :cond_17

    const/16 v1, 0x17

    .line 17938
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17940
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->jumpInspector:Lcom/google/common/logging/nano/Vr$VREvent$JumpInspector;

    if-eqz v0, :cond_18

    const/16 v1, 0x18

    .line 17941
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17943
    :cond_18
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->phoneAlignment:Lcom/google/common/logging/nano/Vr$VREvent$PhoneAlignment;

    if-eqz v0, :cond_19

    const/16 v1, 0x19

    .line 17944
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17946
    :cond_19
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->vrStreaming:Lcom/google/common/logging/nano/Vr$VREvent$VrStreaming;

    if-eqz v0, :cond_1a

    const/16 v1, 0x1a

    .line 17947
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17949
    :cond_1a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->expeditions:Lcom/google/common/logging/nano/Vr$VREvent$Expeditions;

    if-eqz v0, :cond_1b

    const/16 v1, 0x1b

    .line 17950
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17952
    :cond_1b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->headTracking:Lcom/google/common/logging/nano/Vr$VREvent$HeadTracking;

    if-eqz v0, :cond_1c

    const/16 v1, 0x1c

    .line 17953
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17955
    :cond_1c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->standaloneHeadset:Lcom/google/common/logging/nano/Vr$VREvent$StandaloneHeadset;

    if-eqz v0, :cond_1d

    const/16 v1, 0x1d

    .line 17956
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 17958
    :cond_1d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent;->eventSource:Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    const/16 v1, 0x1e

    .line 17959
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 17961
    :cond_1e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
