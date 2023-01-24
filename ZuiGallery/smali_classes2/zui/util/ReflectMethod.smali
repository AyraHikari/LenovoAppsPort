.class public Lzui/util/ReflectMethod;
.super Ljava/lang/Object;
.source "ReflectMethod.java"


# instance fields
.field private mMethodInvokeParams:[Ljava/lang/Object;

.field private mMethodOwner:Lzui/util/ReflectClass;

.field private mRealMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lzui/util/ReflectClass;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lzui/util/ReflectMethod;->mMethodOwner:Lzui/util/ReflectClass;

    .line 31
    iput-object p2, p0, Lzui/util/ReflectMethod;->mRealMethod:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 41
    :try_start_0
    iget-object p2, p0, Lzui/util/ReflectMethod;->mRealMethod:Ljava/lang/reflect/Method;

    if-eqz p2, :cond_1

    .line 42
    iget-object p2, p0, Lzui/util/ReflectMethod;->mMethodInvokeParams:[Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 43
    iget-object p2, p0, Lzui/util/ReflectMethod;->mRealMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    iget-object p2, p0, Lzui/util/ReflectMethod;->mRealMethod:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lzui/util/ReflectMethod;->mMethodInvokeParams:[Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public varargs setInvokeParams([Ljava/lang/Object;)Lzui/util/ReflectMethod;
    .locals 0

    .line 35
    iput-object p1, p0, Lzui/util/ReflectMethod;->mMethodInvokeParams:[Ljava/lang/Object;

    return-object p0
.end method
