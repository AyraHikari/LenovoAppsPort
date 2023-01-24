.class public final Lcom/google/vr/sdk/widgets/video/deps/gQ;
.super Landroid/view/Surface;
.source "DummySurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/gQ$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "DummySurface"

.field private static final c:I = 0x32c0

.field private static d:Z

.field private static e:Z


# instance fields
.field public final a:Z

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/gQ$a;

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/gQ$a;Landroid/graphics/SurfaceTexture;Z)V
    .locals 0

    .line 9
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 10
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ;->f:Lcom/google/vr/sdk/widgets/video/deps/gQ$a;

    .line 11
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/gQ$a;Landroid/graphics/SurfaceTexture;ZLcom/google/vr/sdk/widgets/video/deps/gQ$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/gQ;-><init>(Lcom/google/vr/sdk/widgets/video/deps/gQ$a;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Lcom/google/vr/sdk/widgets/video/deps/gQ;
    .locals 0

    .line 5
    invoke-static {}, Lcom/google/vr/sdk/widgets/video/deps/gQ;->a()V

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gQ;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gl;->b(Z)V

    .line 7
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;

    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->a(Z)Lcom/google/vr/sdk/widgets/video/deps/gQ;

    move-result-object p0

    return-object p0
.end method

.method private static a()V
    .locals 2

    .line 20
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported prior to API level 17"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Z
    .locals 4

    const-class v0, Lcom/google/vr/sdk/widgets/video/deps/gQ;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/google/vr/sdk/widgets/video/deps/gQ;->e:Z

    if-nez v1, :cond_1

    .line 2
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/gQ;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sput-boolean p0, Lcom/google/vr/sdk/widgets/video/deps/gQ;->d:Z

    .line 3
    sput-boolean v3, Lcom/google/vr/sdk/widgets/video/deps/gQ;->e:Z

    .line 4
    :cond_1
    sget-boolean p0, Lcom/google/vr/sdk/widgets/video/deps/gQ;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v2, 0x3055

    .line 24
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "EGL_EXT_protected_content"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/gM;->c:Ljava/lang/String;

    const-string v2, "samsung"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 29
    :cond_1
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/gM;->a:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 13
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ;->f:Lcom/google/vr/sdk/widgets/video/deps/gQ$a;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ;->g:Z

    if-nez v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ;->f:Lcom/google/vr/sdk/widgets/video/deps/gQ$a;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gQ$a;->a()V

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gQ;->g:Z

    .line 18
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
