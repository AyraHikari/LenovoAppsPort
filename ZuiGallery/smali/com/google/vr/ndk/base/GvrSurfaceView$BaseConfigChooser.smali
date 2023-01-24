.class abstract Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "GvrSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/ndk/base/GvrSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Lcom/google/vr/ndk/base/GvrSurfaceView;


# direct methods
.method public constructor <init>(Lcom/google/vr/ndk/base/GvrSurfaceView;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "configSpec"
        }
    .end annotation

    .line 846
    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->this$0:Lcom/google/vr/ndk/base/GvrSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    invoke-direct {p0, p2}, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->filterConfigSpec([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    return-void
.end method

.method private filterConfigSpec([I)[I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configSpec"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->this$0:Lcom/google/vr/ndk/base/GvrSurfaceView;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$200(Lcom/google/vr/ndk/base/GvrSurfaceView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->this$0:Lcom/google/vr/ndk/base/GvrSurfaceView;

    invoke-static {v0}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$200(Lcom/google/vr/ndk/base/GvrSurfaceView;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-object p1

    .line 893
    :cond_0
    array-length v0, p1

    add-int/lit8 v2, v0, 0x2

    .line 894
    new-array v2, v2, [I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    .line 895
    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x3040

    .line 896
    aput p1, v2, v3

    .line 897
    iget-object p1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->this$0:Lcom/google/vr/ndk/base/GvrSurfaceView;

    invoke-static {p1}, Lcom/google/vr/ndk/base/GvrSurfaceView;->access$200(Lcom/google/vr/ndk/base/GvrSurfaceView;)I

    move-result p1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x4

    .line 898
    aput p1, v2, v0

    goto :goto_0

    :cond_1
    const/16 p1, 0x40

    .line 900
    aput p1, v2, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 p1, 0x3038

    .line 902
    aput p1, v2, v0

    return-object v2
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "egl",
            "display"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 853
    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 854
    :goto_0
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 855
    aget v2, v1, v2

    const/16 v3, 0x3040

    if-ne v2, v3, :cond_0

    aget v1, v1, v0

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const-string v1, "GvrSurfaceView"

    const-string v2, "Failed to choose GLES 3 config, will try 2."

    .line 857
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v1, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    const/4 v2, 0x4

    aput v2, v1, v0

    .line 859
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 862
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 v0, 0x0

    .line 865
    aget v5, v7, v0

    if-lez v5, :cond_5

    .line 871
    new-array v0, v5, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 872
    iget-object v3, p0, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->mConfigSpec:[I

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v6, v7

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 875
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/vr/ndk/base/GvrSurfaceView$BaseConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    .line 877
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No config chosen"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 873
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "eglChooseConfig#2 failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 868
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No configs match configSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "egl",
            "display",
            "configs"
        }
    .end annotation
.end method
