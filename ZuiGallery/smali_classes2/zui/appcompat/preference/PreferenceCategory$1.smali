.class Lzui/appcompat/preference/PreferenceCategory$1;
.super Ljava/lang/Object;
.source "PreferenceCategory.java"

# interfaces
.implements Lzui/util/PreferenceBase$PreferenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/appcompat/preference/PreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzui/appcompat/preference/PreferenceCategory;


# direct methods
.method constructor <init>(Lzui/appcompat/preference/PreferenceCategory;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lzui/appcompat/preference/PreferenceCategory$1;->this$0:Lzui/appcompat/preference/PreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSelf()V
    .locals 1

    .line 44
    iget-object v0, p0, Lzui/appcompat/preference/PreferenceCategory$1;->this$0:Lzui/appcompat/preference/PreferenceCategory;

    invoke-static {v0}, Lzui/appcompat/preference/PreferenceCategory;->access$000(Lzui/appcompat/preference/PreferenceCategory;)V

    return-void
.end method
