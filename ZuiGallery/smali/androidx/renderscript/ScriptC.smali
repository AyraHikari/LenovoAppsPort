.class public Landroidx/renderscript/ScriptC;
.super Landroidx/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptC"


# direct methods
.method protected constructor <init>(ILandroidx/renderscript/RenderScript;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/renderscript/Script;-><init>(ILandroidx/renderscript/RenderScript;)V

    return-void
.end method

.method protected constructor <init>(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, v0, p1}, Landroidx/renderscript/Script;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 60
    sget-boolean v0, Landroidx/renderscript/RenderScript;->isNative:Z

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Landroidx/renderscript/RenderScriptThunker;

    .line 62
    new-instance v0, Landroidx/renderscript/ScriptCThunker;

    invoke-direct {v0, p1, p2, p3}, Landroidx/renderscript/ScriptCThunker;-><init>(Landroidx/renderscript/RenderScriptThunker;Landroid/content/res/Resources;I)V

    .line 63
    iput-object v0, p0, Landroidx/renderscript/ScriptC;->mT:Landroidx/renderscript/ScriptCThunker;

    return-void

    .line 67
    :cond_0
    invoke-static {p1, p2, p3}, Landroidx/renderscript/ScriptC;->internalCreate(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)I

    move-result p1

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p0, p1}, Landroidx/renderscript/ScriptC;->setID(I)V

    return-void

    .line 69
    :cond_1
    new-instance p1, Landroidx/renderscript/RSRuntimeException;

    const-string p2, "Loading of ScriptC script failed."

    invoke-direct {p1, p2}, Landroidx/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static declared-synchronized internalCreate(Landroidx/renderscript/RenderScript;Landroid/content/res/Resources;I)I
    .locals 8

    const-class v0, Landroidx/renderscript/ScriptC;

    monitor-enter v0

    .line 78
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x400

    :try_start_1
    new-array v2, v2, [B

    const/4 v3, 0x0

    move v4, v3

    .line 84
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    if-nez v5, :cond_0

    .line 86
    array-length v5, v2

    mul-int/lit8 v5, v5, 0x2

    new-array v6, v5, [B

    .line 87
    array-length v7, v2

    invoke-static {v2, v3, v6, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v5, v4

    move-object v2, v6

    .line 91
    :cond_0
    invoke-virtual {v1, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gtz v5, :cond_1

    .line 98
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0}, Landroidx/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    .line 109
    invoke-virtual {p0, p1, p2, v2, v4}, Landroidx/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)I

    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return p0

    :cond_1
    add-int/2addr v4, v5

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 98
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 99
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    :catch_0
    :try_start_5
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {p0}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
