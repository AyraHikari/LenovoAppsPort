.class public final Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod$DefaultImpls;
.super Ljava/lang/Object;
.source "javaElements.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getHasAnnotationParameterDefaultValue(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;)Z
    .locals 0

    .line 115
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaMethod;->getAnnotationParameterDefaultValue()Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaAnnotationArgument;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
