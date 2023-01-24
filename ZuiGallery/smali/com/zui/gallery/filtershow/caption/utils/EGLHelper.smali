.class public Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;
.super Ljava/lang/Object;
.source "EGLHelper.java"


# static fields
.field public static final CAMERA_INPUT_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field public static final CUBE:[F

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final SURFACETEXTURE_INPUT_FRAGMENT_SHADER_OES:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\n\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\n\nvoid main()\n{\n\tgl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

.field private static final SURFACETEXTURE_INPUT_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nvarying vec2 textureCoordinate;\n\nvoid main()\n{\n\ttextureCoordinate = inputTextureCoordinate.xy;\n\tgl_Position = position;\n}"

.field public static final SURFACE_PBUFFER:I = 0x1

.field public static final SURFACE_PIM:I = 0x2

.field public static final SURFACE_WINDOW:I = 0x3

.field public static final TEXTURE_NO_ROTATION:[F

.field public static final TEXTURE_ROTATED_180:[F

.field public static final TEXTURE_ROTATED_270:[F

.field public static final TEXTURE_ROTATED_90:[F


# instance fields
.field private alpha:I

.field private blue:I

.field private bufferType:I

.field private depth:I

.field private green:I

.field public mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field public mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field public mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field public mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field public mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field public mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private red:I

.field private renderType:I

.field private shareContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private surfaceType:I

.field private surface_native_obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 136
    fill-array-data v1, :array_0

    sput-object v1, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->CUBE:[F

    new-array v1, v0, [F

    .line 143
    fill-array-data v1, :array_1

    sput-object v1, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_NO_ROTATION:[F

    new-array v1, v0, [F

    .line 150
    fill-array-data v1, :array_2

    sput-object v1, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_ROTATED_90:[F

    new-array v1, v0, [F

    .line 156
    fill-array-data v1, :array_3

    sput-object v1, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_ROTATED_180:[F

    new-array v0, v0, [F

    .line 162
    fill-array-data v0, :array_4

    sput-object v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_ROTATED_270:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->surfaceType:I

    const/16 v0, 0x8

    .line 44
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->red:I

    .line 45
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->green:I

    .line 46
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->blue:I

    .line 47
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->alpha:I

    const/16 v0, 0x10

    .line 48
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->depth:I

    const/4 v0, 0x4

    .line 49
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->renderType:I

    const/16 v0, 0x3085

    .line 50
    iput v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->bufferType:I

    .line 51
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->shareContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method public static bindFrameBuffer(IIII)V
    .locals 10

    const/16 v0, 0xde1

    .line 259
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v4, p2

    move v5, p3

    .line 260
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p2, 0x2800

    const p3, 0x46180400    # 9729.0f

    .line 262
    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2801

    .line 264
    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2802

    const p3, 0x47012f00    # 33071.0f

    .line 266
    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p2, 0x2803

    .line 268
    invoke-static {v0, p2, p3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p2, 0x8d40

    .line 271
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p1, 0x8ce0

    const/4 p3, 0x0

    .line 272
    invoke-static {p2, p1, v0, p0, p3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 275
    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 276
    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 3

    .line 281
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTest"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createSurface([I)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 4

    .line 126
    iget v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->surfaceType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->surface_native_obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    return-object p1

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->surface_native_obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, p1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePixmapSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    return-object p1
.end method

.method private static flip(F)F
    .locals 1

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    return v0
.end method

.method public static getRotation(IZZ)[F
    .locals 10

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    .line 302
    sget-object p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_NO_ROTATION:[F

    goto :goto_0

    .line 297
    :cond_0
    sget-object p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_ROTATED_270:[F

    goto :goto_0

    .line 294
    :cond_1
    sget-object p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_ROTATED_180:[F

    goto :goto_0

    .line 291
    :cond_2
    sget-object p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->TEXTURE_ROTATED_90:[F

    :goto_0
    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_3

    new-array p1, v0, [F

    .line 306
    aget v9, p0, v8

    .line 307
    invoke-static {v9}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->flip(F)F

    move-result v9

    aput v9, p1, v8

    aget v9, p0, v7

    aput v9, p1, v7

    aget v9, p0, v6

    .line 308
    invoke-static {v9}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->flip(F)F

    move-result v9

    aput v9, p1, v6

    aget v9, p0, v5

    aput v9, p1, v5

    aget v9, p0, v4

    .line 309
    invoke-static {v9}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->flip(F)F

    move-result v9

    aput v9, p1, v4

    aget v9, p0, v3

    aput v9, p1, v3

    aget v9, p0, v2

    .line 310
    invoke-static {v9}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->flip(F)F

    move-result v9

    aput v9, p1, v2

    aget p0, p0, v1

    aput p0, p1, v1

    move-object p0, p1

    :cond_3
    if-eqz p2, :cond_4

    new-array p1, v0, [F

    .line 314
    aget p2, p0, v8

    aput p2, p1, v8

    aget p2, p0, v7

    .line 315
    invoke-static {p2}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->flip(F)F

    move-result p2

    aput p2, p1, v7

    aget p2, p0, v6

    aput p2, p1, v6

    aget p2, p0, v5

    .line 316
    invoke-static {p2}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->flip(F)F

    move-result p2

    aput p2, p1, v5

    aget p2, p0, v4

    aput p2, p1, v4

    aget p2, p0, v3

    .line 317
    invoke-static {p2}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->flip(F)F

    move-result p2

    aput p2, p1, v3

    aget p2, p0, v2

    aput p2, p1, v2

    aget p0, p0, v1

    .line 318
    invoke-static {p0}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->flip(F)F

    move-result p0

    aput p0, p1, v1

    move-object p0, p1

    :cond_4
    return-object p0
.end method

.method public static loadProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8b31

    .line 217
    invoke-static {p0, v1}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->loadShader(Ljava/lang/String;I)I

    move-result p0

    const-string v1, "Load Program"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "Vertex Shader Failed"

    .line 219
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const v3, 0x8b30

    .line 222
    invoke-static {p1, v3}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->loadShader(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Fragment Shader Failed"

    .line 224
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 228
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 230
    invoke-static {v3, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 231
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 233
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const v4, 0x8b82

    .line 235
    invoke-static {v3, v4, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 236
    aget v0, v0, v2

    if-gtz v0, :cond_2

    const-string p0, "Linking Failed"

    .line 237
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 240
    :cond_2
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 241
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v3
.end method

.method public static loadProgramForSurfaceTexture()I
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nvarying vec2 textureCoordinate;\n\nvoid main()\n{\n\ttextureCoordinate = inputTextureCoordinate.xy;\n\tgl_Position = position;\n}"

    const-string v1, "#extension GL_OES_EGL_image_external : require\n\nprecision mediump float;\nvarying vec2 textureCoordinate;\nuniform samplerExternalOES inputImageTexture;\n\nvoid main()\n{\n\tgl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 205
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static loadProgramForTexture()I
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nvarying vec2 textureCoordinate;\n\nvoid main()\n{\n\ttextureCoordinate = inputTextureCoordinate.xy;\n\tgl_Position = position;\n}"

    const-string v1, "precision mediump float;\nvarying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    .line 209
    invoke-static {v0, v1}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static loadShader(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 247
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 248
    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 249
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const p0, 0x8b81

    const/4 v1, 0x0

    .line 250
    invoke-static {p1, p0, v0, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 251
    aget p0, v0, v1

    if-nez p0, :cond_0

    .line 252
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Compilation\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Load Shader Failed"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    return p1
.end method


# virtual methods
.method public config(IIIIII)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->red:I

    .line 56
    iput p2, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->green:I

    .line 57
    iput p3, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->blue:I

    .line 58
    iput p4, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->alpha:I

    .line 59
    iput p5, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->depth:I

    .line 60
    iput p6, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->renderType:I

    return-void
.end method

.method public destroy()V
    .locals 5

    .line 118
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 120
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 121
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 122
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    return-void
.end method

.method public eglInit(II)Lcom/zui/gallery/filtershow/caption/utils/EGLError;
    .locals 16

    move-object/from16 v0, p0

    const/16 v1, 0xd

    new-array v1, v1, [I

    const/16 v2, 0x3024

    const/4 v8, 0x0

    aput v2, v1, v8

    .line 71
    iget v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->red:I

    const/4 v9, 0x1

    aput v2, v1, v9

    const/16 v2, 0x3023

    const/4 v10, 0x2

    aput v2, v1, v10

    iget v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->green:I

    const/4 v11, 0x3

    aput v2, v1, v11

    const/16 v2, 0x3022

    const/4 v12, 0x4

    aput v2, v1, v12

    iget v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->blue:I

    const/4 v13, 0x5

    aput v2, v1, v13

    const/4 v2, 0x6

    const/16 v3, 0x3021

    aput v3, v1, v2

    iget v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->alpha:I

    const/4 v3, 0x7

    aput v2, v1, v3

    const/16 v2, 0x8

    const/16 v3, 0x3025

    aput v3, v1, v2

    iget v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->depth:I

    const/16 v3, 0x9

    aput v2, v1, v3

    const/16 v2, 0xa

    const/16 v3, 0x3040

    aput v3, v1, v2

    iget v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->renderType:I

    const/16 v3, 0xb

    aput v2, v1, v3

    const/16 v2, 0xc

    const/16 v14, 0x3038

    aput v14, v1, v2

    .line 81
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 82
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    iput-object v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    new-array v3, v10, [I

    .line 85
    iget-object v4, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    new-array v15, v9, [I

    .line 88
    iget-object v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v1

    move-object v7, v15

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 89
    aget v2, v15, v8

    if-nez v2, :cond_0

    .line 90
    sget-object v1, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->ConfigErr:Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    return-object v1

    .line 92
    :cond_0
    aget v2, v15, v8

    new-array v7, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 93
    iget-object v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    aget v6, v15, v8

    move-object v4, v1

    move-object v5, v7

    move-object v1, v7

    move-object v7, v15

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 94
    aget-object v1, v1, v8

    iput-object v1, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v1, v13, [I

    const/16 v2, 0x3057

    aput v2, v1, v8

    aput p1, v1, v9

    const/16 v2, 0x3056

    aput v2, v1, v10

    aput p2, v1, v11

    aput v14, v1, v12

    .line 101
    invoke-direct {v0, v1}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->createSurface([I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    new-array v1, v11, [I

    .line 103
    fill-array-data v1, :array_0

    .line 107
    iget-object v2, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    iget-object v5, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->shareContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, v0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->makeCurrent()V

    .line 109
    sget-object v1, Lcom/zui/gallery/filtershow/caption/utils/EGLError;->OK:Lcom/zui/gallery/filtershow/caption/utils/EGLError;

    return-object v1

    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public makeCurrent()V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 114
    iget-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    return-void
.end method

.method public varargs setSurfaceType(I[Ljava/lang/Object;)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->surfaceType:I

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 66
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/zui/gallery/filtershow/caption/utils/EGLHelper;->surface_native_obj:Ljava/lang/Object;

    :cond_0
    return-void
.end method
