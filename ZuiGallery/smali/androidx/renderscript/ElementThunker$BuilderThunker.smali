.class Landroidx/renderscript/ElementThunker$BuilderThunker;
.super Ljava/lang/Object;
.source "ElementThunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/renderscript/ElementThunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderThunker"
.end annotation


# instance fields
.field mN:Landroid/renderscript/Element$Builder;


# direct methods
.method public constructor <init>(Landroidx/renderscript/RenderScript;)V
    .locals 1

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    check-cast p1, Landroidx/renderscript/RenderScriptThunker;

    .line 287
    :try_start_0
    new-instance v0, Landroid/renderscript/Element$Builder;

    iget-object p1, p1, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    invoke-direct {v0, p1}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    iput-object v0, p0, Landroidx/renderscript/ElementThunker$BuilderThunker;->mN:Landroid/renderscript/Element$Builder;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 289
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public add(Landroidx/renderscript/Element;Ljava/lang/String;I)V
    .locals 1

    .line 294
    check-cast p1, Landroidx/renderscript/ElementThunker;

    .line 296
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ElementThunker$BuilderThunker;->mN:Landroid/renderscript/Element$Builder;

    iget-object p1, p1, Landroidx/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 298
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public create(Landroidx/renderscript/RenderScript;)Landroidx/renderscript/Element;
    .locals 2

    .line 304
    :try_start_0
    iget-object v0, p0, Landroidx/renderscript/ElementThunker$BuilderThunker;->mN:Landroid/renderscript/Element$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v0

    .line 305
    new-instance v1, Landroidx/renderscript/ElementThunker;

    invoke-direct {v1, p1, v0}, Landroidx/renderscript/ElementThunker;-><init>(Landroidx/renderscript/RenderScript;Landroid/renderscript/Element;)V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 307
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
