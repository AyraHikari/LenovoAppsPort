.class Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3;
.super Ljava/lang/Object;
.source "OverridingUtil.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->createTypeChecker(Ljava/util/List;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

.field final synthetic val$matchingTypeConstructors:Ljava/util/Map;


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string p0, "a"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "b"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "equals"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;Ljava/util/Map;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3;->this$0:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3;->val$matchingTypeConstructors:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3;->$$$reportNull$$$0(I)V

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3;->$$$reportNull$$$0(I)V

    .line 367
    :cond_1
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3;->this$0:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->access$000(Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;)Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeChecker$TypeConstructorEquality;->equals(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 368
    :cond_2
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3;->val$matchingTypeConstructors:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    .line 369
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$3;->val$matchingTypeConstructors:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    if-eqz v2, :cond_3

    .line 370
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    if-eqz v3, :cond_5

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0
.end method
