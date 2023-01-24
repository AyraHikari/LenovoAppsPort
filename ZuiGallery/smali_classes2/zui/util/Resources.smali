.class public Lzui/util/Resources;
.super Lzui/util/ReflectClass;
.source "Resources.java"


# static fields
.field private static mInstance:Lzui/util/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lzui/util/Resources;

    invoke-direct {v0}, Lzui/util/Resources;-><init>()V

    sput-object v0, Lzui/util/Resources;->mInstance:Lzui/util/Resources;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.content.res.Resources"

    .line 24
    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getApplicationScale()F
    .locals 5

    .line 34
    sget-object v0, Lzui/util/Resources;->mInstance:Lzui/util/Resources;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 35
    const-class v3, Lzui/util/CompatibilityInfo;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "getCompatibilityInfo"

    invoke-virtual {v0, v4, v2, v3, v1}, Lzui/util/Resources;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Lzui/util/CompatibilityInfo;

    invoke-direct {v1}, Lzui/util/CompatibilityInfo;-><init>()V

    .line 39
    invoke-virtual {v1, v0}, Lzui/util/CompatibilityInfo;->setRealObject(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v1}, Lzui/util/CompatibilityInfo;->getApplicationScale()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFloat(I)F
    .locals 6

    .line 48
    :try_start_0
    sget-object v0, Lzui/util/Resources;->mInstance:Lzui/util/Resources;

    const-string v1, "getFloat"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    .line 48
    invoke-virtual {v0, v1, v3, v4, v2}, Lzui/util/Resources;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1

    .line 29
    sget-object v0, Lzui/util/Resources;->mInstance:Lzui/util/Resources;

    iput-object p1, v0, Lzui/util/Resources;->mRealObject:Ljava/lang/Object;

    return-void
.end method
