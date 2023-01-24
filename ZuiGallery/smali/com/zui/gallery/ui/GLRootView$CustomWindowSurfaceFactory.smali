.class Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;
.super Ljava/lang/Object;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWindowSurfaceFactory"
.end annotation


# instance fields
.field private EGL_GL_COLORSPACE_DISPLAY_P3_EXT:I

.field private EGL_GL_COLORSPACE_DISPLAY_P3_LINEAR_EXT:I

.field private EGL_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT:I

.field private EGL_GL_COLORSPACE_KHR:I

.field private EGL_GL_COLORSPACE_SCRGB_LINEAR_EXT:I

.field final synthetic this$0:Lcom/zui/gallery/ui/GLRootView;


# direct methods
.method private constructor <init>(Lcom/zui/gallery/ui/GLRootView;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;->this$0:Lcom/zui/gallery/ui/GLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x309d

    .line 122
    iput p1, p0, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;->EGL_GL_COLORSPACE_KHR:I

    const/16 p1, 0x3350

    .line 123
    iput p1, p0, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;->EGL_GL_COLORSPACE_SCRGB_LINEAR_EXT:I

    const/16 p1, 0x3490

    .line 124
    iput p1, p0, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;->EGL_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT:I

    const/16 p1, 0x3362

    .line 125
    iput p1, p0, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;->EGL_GL_COLORSPACE_DISPLAY_P3_LINEAR_EXT:I

    const/16 p1, 0x3363

    .line 126
    iput p1, p0, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;->EGL_GL_COLORSPACE_DISPLAY_P3_EXT:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/gallery/ui/GLRootView;Lcom/zui/gallery/ui/GLRootView$1;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;-><init>(Lcom/zui/gallery/ui/GLRootView;)V

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 5

    const-string v0, "GLRootView"

    .line 131
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->updateCurrentColorMode()V

    const/4 v1, 0x3

    const/4 v2, 0x0

    :try_start_0
    new-array v1, v1, [I

    const/4 v3, 0x0

    .line 135
    iget v4, p0, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;->EGL_GL_COLORSPACE_KHR:I

    aput v4, v1, v3

    const/4 v3, 0x1

    .line 136
    iget v4, p0, Lcom/zui/gallery/ui/GLRootView$CustomWindowSurfaceFactory;->EGL_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT:I

    aput v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x3038

    aput v4, v1, v3

    .line 138
    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->isColorModeNature()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-interface {p1, p2, p3, p4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create custom WindowSurface for display p3, currentColorMode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/gallery/util/GalleryUtils;->getCurrentColorMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/zui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "eglCreateWindowSurface"

    .line 141
    invoke-static {v0, v3, v1}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-interface {p1, p2, p3, p4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public destroySurface(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0

    .line 149
    invoke-interface {p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    return-void
.end method
