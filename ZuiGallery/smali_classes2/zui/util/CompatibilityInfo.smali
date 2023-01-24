.class public Lzui/util/CompatibilityInfo;
.super Lzui/util/ReflectClass;
.source "CompatibilityInfo.java"


# static fields
.field private static mInstance:Lzui/util/CompatibilityInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lzui/util/CompatibilityInfo;

    invoke-direct {v0}, Lzui/util/CompatibilityInfo;-><init>()V

    sput-object v0, Lzui/util/CompatibilityInfo;->mInstance:Lzui/util/CompatibilityInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.content.res.CompatibilityInfo"

    .line 25
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApplicationScale()F
    .locals 2

    .line 35
    sget-object v0, Lzui/util/CompatibilityInfo;->mInstance:Lzui/util/CompatibilityInfo;

    if-eqz v0, :cond_0

    const-string v1, "applicationScale"

    invoke-virtual {v0, v1}, Lzui/util/CompatibilityInfo;->hasField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lzui/util/CompatibilityInfo;->mInstance:Lzui/util/CompatibilityInfo;

    invoke-virtual {v0, v1}, Lzui/util/CompatibilityInfo;->getConstFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 30
    sget-object v0, Lzui/util/CompatibilityInfo;->mInstance:Lzui/util/CompatibilityInfo;

    iput-object p1, v0, Lzui/util/CompatibilityInfo;->mRealObject:Ljava/lang/Object;

    return-void
.end method
