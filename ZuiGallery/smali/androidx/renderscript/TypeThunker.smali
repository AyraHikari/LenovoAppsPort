.class Landroidx/renderscript/TypeThunker;
.super Landroidx/renderscript/Type;
.source "TypeThunker.java"


# static fields
.field static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/renderscript/Type;",
            "Landroidx/renderscript/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mN:Landroid/renderscript/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>(Landroidx/renderscript/RenderScript;Landroid/renderscript/Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0, p1}, Landroidx/renderscript/Type;-><init>(ILandroidx/renderscript/RenderScript;)V

    .line 44
    iput-object p2, p0, Landroidx/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroidx/renderscript/TypeThunker;->internalCalc()V

    .line 47
    new-instance v0, Landroidx/renderscript/ElementThunker;

    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroidx/renderscript/ElementThunker;-><init>(Landroidx/renderscript/RenderScript;Landroid/renderscript/Element;)V

    iput-object v0, p0, Landroidx/renderscript/TypeThunker;->mElement:Landroidx/renderscript/Element;
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    sget-object p1, Landroidx/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;

    monitor-enter p1

    .line 53
    :try_start_1
    sget-object p2, Landroidx/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;

    iget-object v0, p0, Landroidx/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {p2, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catch_0
    move-exception p1

    .line 49
    invoke-static {p1}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method static create(Landroidx/renderscript/RenderScript;Landroidx/renderscript/Element;IIIZZI)Landroidx/renderscript/Type;
    .locals 2

    .line 63
    check-cast p1, Landroidx/renderscript/ElementThunker;

    .line 64
    move-object v0, p0

    check-cast v0, Landroidx/renderscript/RenderScriptThunker;

    .line 67
    :try_start_0
    new-instance v1, Landroid/renderscript/Type$Builder;

    iget-object v0, v0, Landroidx/renderscript/RenderScriptThunker;->mN:Landroid/renderscript/RenderScript;

    iget-object p1, p1, Landroidx/renderscript/ElementThunker;->mN:Landroid/renderscript/Element;

    invoke-direct {v1, v0, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    if-lez p2, :cond_0

    .line 68
    invoke-virtual {v1, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    :cond_0
    if-lez p3, :cond_1

    .line 69
    invoke-virtual {v1, p3}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    :cond_1
    if-lez p4, :cond_2

    .line 70
    invoke-virtual {v1, p4}, Landroid/renderscript/Type$Builder;->setZ(I)Landroid/renderscript/Type$Builder;

    :cond_2
    if-eqz p5, :cond_3

    .line 71
    invoke-virtual {v1, p5}, Landroid/renderscript/Type$Builder;->setMipmaps(Z)Landroid/renderscript/Type$Builder;

    :cond_3
    if-eqz p6, :cond_4

    .line 72
    invoke-virtual {v1, p6}, Landroid/renderscript/Type$Builder;->setFaces(Z)Landroid/renderscript/Type$Builder;

    :cond_4
    if-lez p7, :cond_5

    .line 73
    invoke-virtual {v1, p7}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 74
    :cond_5
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p1

    .line 75
    new-instance p2, Landroidx/renderscript/TypeThunker;

    invoke-direct {p2, p0, p1}, Landroidx/renderscript/TypeThunker;-><init>(Landroidx/renderscript/RenderScript;Landroid/renderscript/Type;)V

    .line 76
    invoke-virtual {p2}, Landroidx/renderscript/TypeThunker;->internalCalc()V
    :try_end_0
    .catch Landroid/renderscript/RSRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 80
    invoke-static {p0}, Landroidx/renderscript/ExceptionThunker;->convertException(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method static find(Landroid/renderscript/Type;)Landroidx/renderscript/Type;
    .locals 1

    .line 58
    sget-object v0, Landroidx/renderscript/TypeThunker;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/renderscript/Type;

    return-object p0
.end method


# virtual methods
.method bridge synthetic getNObj()Landroid/renderscript/BaseObj;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/renderscript/TypeThunker;->getNObj()Landroid/renderscript/Type;

    move-result-object v0

    return-object v0
.end method

.method getNObj()Landroid/renderscript/Type;
    .locals 1

    .line 27
    iget-object v0, p0, Landroidx/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    return-object v0
.end method

.method internalCalc()V
    .locals 1

    .line 33
    iget-object v0, p0, Landroidx/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    iput v0, p0, Landroidx/renderscript/TypeThunker;->mDimX:I

    .line 34
    iget-object v0, p0, Landroidx/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    iput v0, p0, Landroidx/renderscript/TypeThunker;->mDimY:I

    .line 35
    iget-object v0, p0, Landroidx/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    iput v0, p0, Landroidx/renderscript/TypeThunker;->mDimZ:I

    .line 36
    iget-object v0, p0, Landroidx/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/renderscript/TypeThunker;->mDimFaces:Z

    .line 37
    iget-object v0, p0, Landroidx/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/renderscript/TypeThunker;->mDimMipmaps:Z

    .line 38
    iget-object v0, p0, Landroidx/renderscript/TypeThunker;->mN:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getYuv()I

    move-result v0

    iput v0, p0, Landroidx/renderscript/TypeThunker;->mDimYuv:I

    .line 39
    invoke-virtual {p0}, Landroidx/renderscript/TypeThunker;->calcElementCount()V

    return-void
.end method
