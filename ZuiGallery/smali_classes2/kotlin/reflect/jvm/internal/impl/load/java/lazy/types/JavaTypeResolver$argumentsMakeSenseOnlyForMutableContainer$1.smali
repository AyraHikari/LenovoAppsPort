.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$argumentsMakeSenseOnlyForMutableContainer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "JavaTypeResolver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->argumentsMakeSenseOnlyForMutableContainer(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaClassifierType;Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaTypeResolver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaTypeResolver.kt\norg/jetbrains/kotlin/load/java/lazy/types/JavaTypeResolver$argumentsMakeSenseOnlyForMutableContainer$1\n*L\n1#1,355:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$argumentsMakeSenseOnlyForMutableContainer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$argumentsMakeSenseOnlyForMutableContainer$1;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$argumentsMakeSenseOnlyForMutableContainer$1;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$argumentsMakeSenseOnlyForMutableContainer$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$argumentsMakeSenseOnlyForMutableContainer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$argumentsMakeSenseOnlyForMutableContainer$1;->invoke(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;)Z
    .locals 2

    .line 182
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;->getBound()Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;->isExtends()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    move v0, p1

    :cond_1
    return v0
.end method
