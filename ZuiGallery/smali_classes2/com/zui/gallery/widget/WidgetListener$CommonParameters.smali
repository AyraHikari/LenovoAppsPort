.class public interface abstract Lcom/zui/gallery/widget/WidgetListener$CommonParameters;
.super Ljava/lang/Object;
.source "WidgetListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/widget/WidgetListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommonParameters"
.end annotation


# static fields
.field public static final APPWIDGET_DELETED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DELETED"

.field public static final APPWIDGET_DISABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_DISABLED"

.field public static final APPWIDGET_ENABLED:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_ENABLED"

.field public static final APPWIDGET_UPDATE_OPTIONS:Ljava/lang/String; = "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

.field public static final BITMAP_MAX:I = 0x1770000

.field public static final CLASS_NAME:Ljava/lang/String; = "className"

.field public static final CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field public static final DAY:J = 0x1L

.field public static final DELIMITER:Ljava/lang/String; = ","

.field public static final END_TIME:I = 0x18

.field public static final FESTIVAL:Ljava/lang/String; = "festival"

.field public static final HOURS:Ljava/lang/Long;

.field public static final IS_MULTI_WINDOW_MODE:Ljava/lang/String; = "isMultiWindowMode"

.field public static final IS_NAVIGATION_SHOWING4x3:Ljava/lang/String; = "isNavigationShowing4x3"

.field public static final IS_WIDGET:Ljava/lang/String; = "isWidget"

.field public static final IS_WIDGET4X2:Ljava/lang/String; = "isWidget4x2"

.field public static final IS_WIDGET4X2_CREATE:Ljava/lang/String; = "widget4x2Create"

.field public static final IS_WIDGET4X3:Ljava/lang/String; = "isWidget4x3"

.field public static final IS_WIDGET4X3_CREATE:Ljava/lang/String; = "widget4x3Create"

.field public static final LAUNCHER5x4:Ljava/lang/String; = "5x4"

.field public static final LAUNCHER6X4:Ljava/lang/String; = "4x6"

.field public static final LAUNCHER6X5:Ljava/lang/String; = "5x6"

.field public static final LAUNCHER_LAYOUT_KEY:Ljava/lang/String; = "extra_new_layout_config"

.field public static final LUNAR_CALENDAR:Ljava/lang/String; = "lunarCalendar"

.field public static final LUNAR_CALENDAR_DRY_BRANCH:Ljava/lang/String; = "lunarCalendarDryBranch"

.field public static final MIN154x2:Ljava/lang/String; = "min154x2"

.field public static final MIN154x3:Ljava/lang/String; = "min154x3"

.field public static final MINUTE:I = 0x5

.field public static final MULTIPLE_CHOICE_QUANTITY:I = 0x14

.field public static final MULTI_WINDOW_MODE:Ljava/lang/String; = "multiWindowMode"

.field public static final NOT_MULTI_WINDOW_MODE:Ljava/lang/String; = "notMultiWindowMode"

.field public static final ONE_DAY:J = 0x5265c00L

.field public static final ONE_DAY_DIFFERENCE4x2:Ljava/lang/String; = "oneDayDifference4x2"

.field public static final ONE_DAY_DIFFERENCE4x3:Ljava/lang/String; = "oneDayDifference4x3"

.field public static final PHOTOS_LOWER_LIMIT:I = 0x2

.field public static final PHOTOS_UPPER_LIMIT:I = 0xa

.field public static final RADIUS_OF_FILLET:I

.field public static final RADIUS_OF_FILLET4x2:I

.field public static final RADIUS_OF_FILLET_FUZZY:I

.field public static final START_TIME:I = 0x8

.field public static final WALLPAPER_TEXT_COLOR:Ljava/lang/String; = "com.zui.launcher.WALLPAPER_TEXT_COLOR"

.field public static final WALLPAPER_TEXT_COLOR_URI:Landroid/net/Uri;

.field public static final ZUI_WIDGET_MOVE:Ljava/lang/String; = "com.zui.gallery.widget.AppWidget"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "content://com.zui.launcher.settings.export/method"

    .line 132
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->WALLPAPER_TEXT_COLOR_URI:Landroid/net/Uri;

    .line 175
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->RADIUS_OF_FILLET:I

    .line 176
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->RADIUS_OF_FILLET_FUZZY:I

    .line 177
    invoke-static {}, Lcom/zui/gallery/app/GalleryAppImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->RADIUS_OF_FILLET4x2:I

    const-wide/16 v0, 0x4

    .line 183
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zui/gallery/widget/WidgetListener$CommonParameters;->HOURS:Ljava/lang/Long;

    return-void
.end method
