.class public final Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Vr.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano<",
        "Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

.field private actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

.field private appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

.field private controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

.field private environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

.field private errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

.field private menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

.field private preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

.field private preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

.field private search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

.field private splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

.field private startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

.field private startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

.field private streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

.field private tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

.field private tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

.field private view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11844
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    const/4 v0, 0x0

    .line 11849
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 11850
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 11851
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    .line 11852
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 11853
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 11854
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 11855
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 11856
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 11857
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 11858
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 11859
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    .line 11860
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 11861
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 11862
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    .line 11863
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    .line 11864
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    .line 11865
    invoke-static {}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;->emptyArray()[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    .line 11866
    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 11867
    iput v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->cachedSize:I

    return-void
.end method


# virtual methods
.method public final clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    .locals 5

    .line 11874
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11878
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v1, :cond_0

    .line 11879
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 11881
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_1

    .line 11882
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;->clone()Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 11884
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    .line 11885
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move v1, v2

    .line 11886
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 11887
    aget-object v4, v3, v1

    if-eqz v4, :cond_2

    .line 11888
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11892
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v1, :cond_4

    .line 11893
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 11895
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v1, :cond_5

    .line 11896
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 11898
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v1, :cond_6

    .line 11899
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 11901
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v1, :cond_7

    .line 11902
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 11904
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v1, :cond_8

    .line 11905
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 11907
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v1, :cond_9

    .line 11908
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 11910
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v1, :cond_a

    .line 11911
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 11913
    :cond_a
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v1, :cond_c

    array-length v3, v1

    if-lez v3, :cond_c

    .line 11914
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move v1, v2

    .line 11915
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v4, v3

    if-ge v1, v4, :cond_c

    .line 11916
    aget-object v4, v3, v1

    if-eqz v4, :cond_b

    .line 11917
    iget-object v4, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    move-result-object v3

    aput-object v3, v4, v1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11921
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v1, :cond_d

    .line 11922
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 11924
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v1, :cond_e

    .line 11925
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 11927
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    if-eqz v1, :cond_f

    .line 11928
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    .line 11930
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    if-eqz v1, :cond_10

    .line 11931
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    .line 11933
    :cond_10
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    if-eqz v1, :cond_11

    .line 11934
    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    .line 11936
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    if-eqz v1, :cond_13

    array-length v3, v1

    if-lez v3, :cond_13

    .line 11937
    array-length v1, v1

    new-array v1, v1, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    iput-object v1, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    .line 11938
    :goto_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    array-length v3, v1

    if-ge v2, v3, :cond_13

    .line 11939
    aget-object v3, v1, v2

    if-eqz v3, :cond_12

    .line 11940
    iget-object v3, v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    move-result-object v1

    aput-object v1, v3, v2

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_13
    return-object v0

    :catch_0
    move-exception v0

    .line 11876
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

    .line 8905
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

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

    .line 8905
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

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

    .line 8905
    invoke-virtual {p0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->clone()Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;

    move-result-object v0

    return-object v0
.end method

.method protected final computeSerializedSize()I
    .locals 5

    .line 12022
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 12023
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 12025
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12027
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    .line 12029
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12031
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    move v1, v2

    .line 12032
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 12033
    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    .line 12036
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12040
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v1, :cond_4

    const/4 v3, 0x4

    .line 12042
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12044
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v1, :cond_5

    const/4 v3, 0x5

    .line 12046
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12048
    :cond_5
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v1, :cond_6

    const/4 v3, 0x6

    .line 12050
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12052
    :cond_6
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v1, :cond_7

    const/4 v3, 0x7

    .line 12054
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12056
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v1, :cond_8

    const/16 v3, 0x8

    .line 12058
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12060
    :cond_8
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v1, :cond_9

    const/16 v3, 0x9

    .line 12062
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12064
    :cond_9
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v1, :cond_b

    array-length v1, v1

    if-lez v1, :cond_b

    move v1, v2

    .line 12065
    :goto_1
    iget-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v4, v3

    if-ge v1, v4, :cond_b

    .line 12066
    aget-object v3, v3, v1

    if-eqz v3, :cond_a

    const/16 v4, 0xa

    .line 12069
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12073
    :cond_b
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v1, :cond_c

    const/16 v3, 0xb

    .line 12075
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12077
    :cond_c
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v1, :cond_d

    const/16 v3, 0xc

    .line 12079
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12081
    :cond_d
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    if-eqz v1, :cond_e

    const/16 v3, 0xd

    .line 12083
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12085
    :cond_e
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v1, :cond_f

    const/16 v3, 0xe

    .line 12087
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12089
    :cond_f
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    if-eqz v1, :cond_11

    array-length v1, v1

    if-lez v1, :cond_11

    .line 12090
    :goto_2
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    array-length v3, v1

    if-ge v2, v3, :cond_11

    .line 12091
    aget-object v1, v1, v2

    if-eqz v1, :cond_10

    const/16 v3, 0xf

    .line 12094
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 12098
    :cond_11
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    if-eqz v1, :cond_12

    const/16 v2, 0x10

    .line 12100
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12102
    :cond_12
    iget-object v1, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    if-eqz v1, :cond_13

    const/16 v2, 0x11

    .line 12104
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 5
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

    .line 12114
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 12119
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 12276
    :sswitch_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    if-nez v0, :cond_1

    .line 12277
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    .line 12279
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12269
    :sswitch_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    if-nez v0, :cond_2

    .line 12270
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    .line 12272
    :cond_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x7a

    .line 12250
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12251
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    array-length v2, v2

    :goto_1
    add-int/2addr v0, v2

    .line 12252
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    if-eqz v2, :cond_4

    .line 12255
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_5

    .line 12258
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;-><init>()V

    aput-object v1, v3, v2

    .line 12259
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 12260
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 12263
    :cond_5
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;-><init>()V

    aput-object v0, v3, v2

    .line 12264
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 12265
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    goto :goto_0

    .line 12242
    :sswitch_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-nez v0, :cond_6

    .line 12243
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 12245
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 12235
    :sswitch_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    if-nez v0, :cond_7

    .line 12236
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    .line 12238
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12228
    :sswitch_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-nez v0, :cond_8

    .line 12229
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    .line 12231
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12221
    :sswitch_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-nez v0, :cond_9

    .line 12222
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    .line 12224
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0x52

    .line 12202
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12203
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_3

    :cond_a
    array-length v2, v2

    :goto_3
    add-int/2addr v0, v2

    .line 12204
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v2, :cond_b

    .line 12207
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_b
    :goto_4
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_c

    .line 12210
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;-><init>()V

    aput-object v1, v3, v2

    .line 12211
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 12212
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 12215
    :cond_c
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;-><init>()V

    aput-object v0, v3, v2

    .line 12216
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 12217
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    goto/16 :goto_0

    .line 12194
    :sswitch_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-nez v0, :cond_d

    .line 12195
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    .line 12197
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12187
    :sswitch_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-nez v0, :cond_e

    .line 12188
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    .line 12190
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12180
    :sswitch_a
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-nez v0, :cond_f

    .line 12181
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    .line 12183
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12173
    :sswitch_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-nez v0, :cond_10

    .line 12174
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    .line 12176
    :cond_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12166
    :sswitch_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-nez v0, :cond_11

    .line 12167
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    .line 12169
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12159
    :sswitch_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-nez v0, :cond_12

    .line 12160
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    .line 12162
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_e
    const/16 v0, 0x1a

    .line 12140
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12141
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_5

    :cond_13
    array-length v2, v2

    :goto_5
    add-int/2addr v0, v2

    .line 12142
    new-array v3, v0, [Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    if-eqz v2, :cond_14

    .line 12145
    iget-object v4, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_14
    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_15

    .line 12148
    new-instance v1, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-direct {v1}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;-><init>()V

    aput-object v1, v3, v2

    .line 12149
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 12150
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 12153
    :cond_15
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;-><init>()V

    aput-object v0, v3, v2

    .line 12154
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 12155
    iput-object v3, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    goto/16 :goto_0

    .line 12132
    :sswitch_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-nez v0, :cond_16

    .line 12133
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$Transform;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    .line 12135
    :cond_16
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 12125
    :sswitch_10
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-nez v0, :cond_17

    .line 12126
    new-instance v0, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-direct {v0}, Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;-><init>()V

    iput-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    .line 12128
    :cond_17
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :sswitch_11
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0xa -> :sswitch_10
        0x12 -> :sswitch_f
        0x1a -> :sswitch_e
        0x22 -> :sswitch_d
        0x2a -> :sswitch_c
        0x32 -> :sswitch_b
        0x3a -> :sswitch_a
        0x42 -> :sswitch_9
        0x4a -> :sswitch_8
        0x52 -> :sswitch_7
        0x5a -> :sswitch_6
        0x62 -> :sswitch_5
        0x6a -> :sswitch_4
        0x72 -> :sswitch_3
        0x7a -> :sswitch_2
        0x82 -> :sswitch_1
        0x8a -> :sswitch_0
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

    .line 11951
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromKeyholeTransform:Lcom/google/common/logging/nano/Vr$VREvent$DoublePrecisionTransform;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 11952
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11954
    :cond_0
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->startFromHeadTransform:Lcom/google/common/logging/nano/Vr$VREvent$Transform;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 11955
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11957
    :cond_1
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 11958
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->controllerStates:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ControllerState;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 11959
    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    .line 11961
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11965
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->appState:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$AppState;

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    .line 11966
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11968
    :cond_4
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->view:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$View;

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    .line 11969
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11971
    :cond_5
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->menu:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Menu;

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    .line 11972
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11974
    :cond_6
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferences:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v0, :cond_7

    const/4 v2, 0x7

    .line 11975
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11977
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tour:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tour;

    if-eqz v0, :cond_8

    const/16 v2, 0x8

    .line 11978
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11980
    :cond_8
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->tutorial:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Tutorial;

    if-eqz v0, :cond_9

    const/16 v2, 0x9

    .line 11981
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11983
    :cond_9
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    if-eqz v0, :cond_b

    array-length v0, v0

    if-lez v0, :cond_b

    move v0, v1

    .line 11984
    :goto_1
    iget-object v2, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Actor;

    array-length v3, v2

    if-ge v0, v3, :cond_b

    .line 11985
    aget-object v2, v2, v0

    if-eqz v2, :cond_a

    const/16 v3, 0xa

    .line 11987
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 11991
    :cond_b
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->environment:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Environment;

    if-eqz v0, :cond_c

    const/16 v2, 0xb

    .line 11992
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11994
    :cond_c
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->splashScreen:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$SplashScreen;

    if-eqz v0, :cond_d

    const/16 v2, 0xc

    .line 11995
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 11997
    :cond_d
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->search:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Search;

    if-eqz v0, :cond_e

    const/16 v2, 0xd

    .line 11998
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12000
    :cond_e
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->preferencesDelta:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$Preferences;

    if-eqz v0, :cond_f

    const/16 v2, 0xe

    .line 12001
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12003
    :cond_f
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    .line 12004
    :goto_2
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->errors:[Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$VrSdkError;

    array-length v2, v0

    if-ge v1, v2, :cond_11

    .line 12005
    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    const/16 v2, 0xf

    .line 12007
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12011
    :cond_11
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->streetView:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$StreetView;

    if-eqz v0, :cond_12

    const/16 v1, 0x10

    .line 12012
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12014
    :cond_12
    iget-object v0, p0, Lcom/google/common/logging/nano/Vr$VREvent$EarthVr;->actionOrb:Lcom/google/common/logging/nano/Vr$VREvent$EarthVr$ActionOrb;

    if-eqz v0, :cond_13

    const/16 v1, 0x11

    .line 12015
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 12017
    :cond_13
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
